import 'package:draw_guess/authentication/authentication.dart';
import 'package:draw_guess/core/core.dart';
import 'package:draw_guess/game/game.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return KeyboardUnFocusWidget(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Draw & Guess'),
          actions: const [
            Padding(
              padding: AppPadding.all(),
              child: SignOutButton(),
            ),
          ],
        ),
        body: Padding(
          padding: const AppPadding.all(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              JoinGameRoomWidget(),
              EmptyHeight(),
              CreateGameButton(),
              EmptyHeight(),
              _PublicGamesButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class _PublicGamesButton extends StatelessWidget {
  const _PublicGamesButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpandHorizontal(
      height: 50.0,
      child: OutlinedButton(
        onPressed: () {},
        child: const Text('Public Games'),
      ),
    );
  }
}

