import 'package:draw_guess/core/core.dart';
import 'package:draw_guess/game/game.dart';

class GameRoomPage extends HookConsumerWidget {
  const GameRoomPage({
    Key? key,
    @pathParam required this.gameRoomId,
  }) : super(key: key);

  final String gameRoomId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameRoom = useState<GameRoom?>(null);
    ref
        .watch(gameRoomStreamProvider(gameRoomId))
        .whenData((value) => gameRoom.value = value);
    final adminId = gameRoom.value?.adminId;
    final currentUserId =
        ref.watch(firebaseAuthProvider).currentUser!.uid;
    final isCurrentUserAdmin = adminId == currentUserId;
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Game Room'),
          actions: const [
            LeaveGameRoomButton(),
          ],
        ),
        body: ref.watch(playersStreamProvider(gameRoomId)).when(
              data: (players) {
                return Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: players.length,
                        itemBuilder: (context, index) {
                          final player = players[index];
                          final isAdmin = player.id == adminId;
                          return ListTile(
                            title: Text(player.name),
                            trailing: isAdmin
                                ? Text(
                                    'Admin',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2
                                        ?.copyWith(
                                          color: AppColors.green,
                                        ),
                                  )
                                : Visibility(
                                    visible: isCurrentUserAdmin,
                                    child: IconButton(
                                      onPressed: () {
                                        ref
                                            .read(gameNotifierProvider.notifier)
                                            .leaveGameRoom(
                                              gameRoomId,
                                              player.name,
                                              willNavigateToHome: false,
                                            );
                                      },
                                      icon: const Icon(
                                        MdiIcons.accountRemove,
                                        color: AppColors.red,
                                      ),
                                    ),
                                  ),
                          );
                        },
                      ),
                    ),
                    StartGameButton(
                      isCurrentUserAdmin: isCurrentUserAdmin,
                      gameRoom: gameRoom.value,
                    )
                  ],
                );
              },
              error: (e, st) => const CustomErrorMessage(),
              loading: () => const LoadingIndicator(),
            ),
      ),
    );
  }
}
