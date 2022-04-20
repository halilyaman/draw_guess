import 'package:draw_guess/core/core.dart';

class GoogleSignInButton extends ConsumerWidget {
  const GoogleSignInButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      iconSize: 100,
      onPressed: ref.watch(authNotifierProvider.notifier).signIn,
      icon: const Icon(MdiIcons.google),
    );
  }
}