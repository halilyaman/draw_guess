import 'package:draw_guess/core/core.dart';
import 'package:draw_guess/game/game.dart';

class JoinGameRoomWidget extends HookConsumerWidget {
  const JoinGameRoomWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameIdController = useTextEditingController();
    final gameNotifier = ref.watch(gameNotifierProvider.notifier);
    final gameState = ref.watch(gameNotifierProvider);
    ref.listen<GameState>(gameNotifierProvider, (previous, next) {
      next.whenOrNull(
        joining: () => Popup.instance.showInfoDialog('Joining a game room...'),
      );
    });
    return CustomTextField(
      hintText: 'Enter Game ID',
      controller: gameIdController,
      suffixIcon: TextButton(
        onPressed: gameState.maybeWhen(
          creating: () => null,
          joining: () => null,
          orElse: () => () async {
            if (gameIdController.text.isEmpty) {
              Popup.instance.showErrorPopup('Game ID can not be empty!');
              return;
            }
            final playerName = await AutoRouter.of(context)
                .push<String>(const PlayerNameDialogRoute());
            if (playerName == null) return;
            await gameNotifier.joinGameRoom(gameIdController.text, playerName);
          },
        ),
        child: const Text('Join'),
      ),
    );
  }
}
