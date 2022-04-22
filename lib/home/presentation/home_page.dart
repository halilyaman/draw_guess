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
          actions: const [
            _CreateGameButton(),
            Padding(
              padding: AppPadding.all(),
              child: SignOutButton(),
            ),
          ],
        ),
        body: const Padding(
          padding: AppPadding.all(),
          child: JoinGameWidget(),
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
    return IconButton(
      icon: const Icon(MdiIcons.plusCircle),
      onPressed: () {
        AutoRouter.of(context).push(const CreateGameDialogRoute());
      },
    );
  }
}
