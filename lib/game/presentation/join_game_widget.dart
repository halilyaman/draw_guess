import 'package:draw_guess/core/core.dart';

class JoinGameWidget extends HookWidget {
  const JoinGameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final gameIdController = useTextEditingController();
    return CustomTextField(
      hintText: 'Enter Game ID',
      controller: gameIdController,
      suffixIcon: TextButton(
        onPressed: () {},
        child: const Text('Join'),
      ),
    );
  }
}