import 'package:draw_guess/core/core.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Draw & Guess', style: Theme.of(context).textTheme.headline2,),
            const GoogleSignInButton(),
          ],
        ),
      ),
    );
  }
}

class GoogleSignInButton extends ConsumerWidget {
  const GoogleSignInButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      iconSize: 100,
      onPressed: () {
        ref.watch(authNotifierProvider.notifier).signIn();
      },
      icon: const Icon(MdiIcons.google),
    );
  }
}
