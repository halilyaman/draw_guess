import 'package:draw_guess/core/core.dart';

class PlayerNameDialogPage extends HookConsumerWidget {
  const PlayerNameDialogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nicknameController = useTextEditingController();
    return RouterDialogWrapper(
      child: Padding(
        padding: const AppPadding.all(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomTextField(
                controller: nicknameController,
                hintText: 'Enter a Nickname',
              ),
              const EmptyHeight(),
              ExpandHorizontal(
                height: 40.0,
                child: ElevatedButton(
                  onPressed: () {
                    final validated = ref
                        .read(gameNotifierProvider.notifier)
                        .validatePlayerName(nicknameController.text);
                    if (!validated) {
                      Popup.instance
                          .showErrorPopup('Please enter a valid player name!');
                      return;
                    }
                    AutoRouter.of(context).pop(nicknameController.text);
                  },
                  child: const Text('Next'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
