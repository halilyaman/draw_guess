import 'package:draw_guess/authentication/authentication.dart';
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
