import 'package:draw_guess/authentication/authentication.dart';
import 'package:draw_guess/core/core.dart';

class HomePage extends HookWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final gameIdController = useTextEditingController();
    return KeyboardUnFocusWidget(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: const Icon(MdiIcons.plusCircle),
              onPressed: () {
                Popup.instance.showSuccessPopup();
              },
            ),
            const Padding(
              padding: AppPadding.all(),
              child: SignOutButton(),
            ),
          ],
        ),
        body: Padding(
          padding: const AppPadding.all(),
          child: Column(
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
          ),
        ),
      ),
    );
  }
}
