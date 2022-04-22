import 'package:draw_guess/authentication/authentication.dart';
import 'package:draw_guess/core/core.dart';

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
          child: _JoinGameByIdWidget(),
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
        Popup.instance.showSuccessPopup();
      },
    );
  }
}

class _JoinGameByIdWidget extends HookWidget {
  const _JoinGameByIdWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final gameIdController = useTextEditingController();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTextField(
          hintText: 'Enter Game ID',
          controller: gameIdController,
        ),
        const EmptyHeight() * 2,
        ConstrainedBox(
          constraints: const BoxConstraints.expand(height: 40.0),
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Join'),
          ),
        ),
      ],
    );
  }
}
