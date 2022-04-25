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
        ),
        body: Padding(
          padding: const AppPadding.all(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              JoinGameWidget(),
              EmptyHeight(),
              _CreateGameButton(),
              EmptyHeight(),
              _PublicGamesButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class _CreateGameButton extends StatelessWidget {
  const _CreateGameButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpandHorizontal(
      height: 50.0,
      child: OutlinedButton(
        child: const Text('Create Game'),
        onPressed: () {
          AutoRouter.of(context).push(const CreateGameDialogRoute());
        },
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

