import 'package:draw_guess/core/core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
     options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const ProviderScope(child: DrawGuessApp()));
}
