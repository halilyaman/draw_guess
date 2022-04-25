import 'package:draw_guess/core/core.dart';
import 'package:draw_guess/game/game.dart';

class Popup {
  Popup._() {
    _context = App.navigatorKey.currentContext!;
    _textTheme = Theme.of(_context).textTheme;
  }

  static Popup instance = Popup._();
  static late BuildContext _context;
  static late TextTheme _textTheme;
  static FlashController? _controller;

  Color get _backgroundColor => Theme.of(_context).brightness == Brightness.dark
      ? Colors.black
      : Colors.white;

  Future _show({
    Duration? duration,
    required Widget Function(BuildContext, FlashController) builder,
  }) async {
    _controller = FlashController(
      _context,
      duration: duration,
      builder: builder,
    );
    await _controller?.show();
  }

  void closeCurrentPopup() {
    if (!_isCurrentPopupDisposed) {
      _controller?.dismiss();
    }
  }

  bool get _isCurrentPopupDisposed => _controller?.isDisposed == true;

  Future<void> showErrorPopup([String? errorMessage]) async {
    await _context.showErrorBar(
      content: Text(errorMessage ?? 'An error occurred!'),
    );
  }

  Future<void> showSuccessPopup([String? successMessage]) async {
    await _context.showSuccessBar(
      content: Text(successMessage ?? 'Successful'),
    );
  }

  Future<void> showUploadTaskPopup(
    UploadTask uploadTask,
    void Function(String) onSuccess,
  ) async {
    closeCurrentPopup();
    await _show(
      builder: (_, controller) {
        return Flash(
          backgroundColor: _backgroundColor,
          controller: controller,
          position: FlashPosition.top,
          behavior: FlashBehavior.fixed,
          barrierDismissible: false,
          child: UploadTaskPopup(
            uploadTask: uploadTask,
            onDone: () async {
              showSuccessPopup('Uploaded Successfully');
              final url = await (await uploadTask).ref.getDownloadURL();
              onSuccess(url);
            },
          ),
        );
      },
    );
  }

  Future<void> showBlockDialog() async {
    final completer = Completer();
    Future.delayed(const Duration(seconds: 3))
        .then((value) => completer.complete());
    _context.showBlockDialog(dismissCompleter: completer);
  }

  Future<void> showInfoDialog(String text) async {
    await _context.showInfoBar(content: Text(text));
  }
}
