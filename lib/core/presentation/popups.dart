import 'dart:async';

import 'package:draw_guess/core/core.dart';

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
          child: _UploadTaskPopup(
            uploadTask: uploadTask,
            onDone: () async {
              showSuccessPopup('Upload Successful');
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
}

class _UploadTaskPopup extends StatefulWidget {
  const _UploadTaskPopup({
    Key? key,
    required this.uploadTask,
    required this.onDone,
  }) : super(key: key);

  final UploadTask uploadTask;
  final VoidCallback onDone;

  @override
  State<_UploadTaskPopup> createState() => _UploadTaskPopupState();
}

class _UploadTaskPopupState extends State<_UploadTaskPopup> {
  var value = 0.0;
  var isDone = false;

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      widget.uploadTask.snapshotEvents.listen((taskSnapshot) {
        value = taskSnapshot.bytesTransferred / taskSnapshot.totalBytes;
        if (value == 1 && !isDone) {
          widget.onDone();
          isDone = true;
        }
        if (mounted) {
          setState(() {});
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlashBar(
      icon: const Icon(
        MdiIcons.upload,
        size: 36.0,
      ),
      title: Text(
        'File uploading...',
        style: Theme.of(context).textTheme.bodyText1?.copyWith(
              fontSize: 18,
            ),
      ),
      content: LinearProgressIndicator(
        value: value,
      ),
    );
  }
}
