import 'package:draw_guess/core/core.dart';

class CreateGameDialogPage extends HookConsumerWidget {
  const CreateGameDialogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameIdController = useTextEditingController();
    final gameState = ref.watch(gameNotifierProvider);
    return RouterDialogWrapper(
      child: Padding(
        padding: const AppPadding.all(),
        child: gameState.maybeWhen(
          creating: () => const LoadingIndicator(),
          orElse: () => SingleChildScrollView(
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
                      final gameNotifier = ref.read(gameNotifierProvider.notifier);
                      gameNotifier.createGameRoom(gameIdController.text);
                    },
                    child: const Text('Create Game Room'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
