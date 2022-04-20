import 'package:draw_guess/core/core.dart';

class SignOutButton extends ConsumerWidget {
  const SignOutButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppColors.white),
      ),
      onPressed: ref.watch(authNotifierProvider.notifier).signOut,
      child: const Text('Sign Out'),
    );
  }
}
