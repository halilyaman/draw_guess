import 'package:draw_guess/core/core.dart';
import 'package:draw_guess/game/game.dart';

class GameRoomPage extends StatelessWidget {
  const GameRoomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        body: Center(
          child: Column(
            children: const [

            ],
          ),
        ),
      ),
    );
  }
}
