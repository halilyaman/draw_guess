import 'package:draw_guess/core/core.dart';

class GameRoomIdDialogPage extends HookConsumerWidget {
  const GameRoomIdDialogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameIdController = useTextEditingController();
    return RouterDialogWrapper(
      child: Padding(
        padding: const AppPadding.all(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomTextField(
                controller: gameIdController,
                hintText: 'Enter Game ID...',
              ),
              const EmptyHeight(),
              ExpandHorizontal(
                height: 40.0,
                child: ElevatedButton(
                  onPressed: () {
                    final validated = ref
                        .read(gameNotifierProvider.notifier)
                        .validateGameId(gameIdController.text);
                    if (!validated) {
                      Popup.instance
                          .showErrorPopup('Please enter a valid game ID!');
                      return;
                    }
                    AutoRouter.of(context).pop(gameIdController.text);
                  },
                  child: const Text('Create Game Room'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
