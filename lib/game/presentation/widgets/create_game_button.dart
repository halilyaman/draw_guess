import 'package:draw_guess/core/core.dart';
import 'package:draw_guess/game/game.dart';

class CreateGameButton extends ConsumerWidget {
  const CreateGameButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameNotifier = ref.watch(gameNotifierProvider.notifier);
    final gameState = ref.watch(gameNotifierProvider);
    ref.listen<GameState>(gameNotifierProvider, (previous, next) {
      next.whenOrNull(
        creating: () => Popup.instance.showInfoDialog('Creating a game room...'),
        joining: () => Popup.instance.showInfoDialog('Joining a game room...'),
      );
    });
    return ExpandHorizontal(
      height: 50.0,
      child: OutlinedButton(
        child: const Text('Create Game'),
        onPressed: gameState.maybeWhen(
          creating: () => null,
          joining: () => null,
          orElse: () => () async {
            final gameRoomId = await AutoRouter.of(context)
                .push<String>(const GameRoomIdDialogRoute());
            if (gameRoomId == null) return;
            final playerName = await AutoRouter.of(context)
                .push<String>(const PlayerNameDialogRoute());
            if (playerName == null) return;
            await gameNotifier.createGameRoom(gameRoomId);
            final gameState = ref.read(gameNotifierProvider);
            gameState.whenOrNull(
              created: (gameRoom) async {
                await gameNotifier.joinGameRoom(gameRoom.id, playerName);
              },
            );
          },
        ),
      ),
    );
  }
}