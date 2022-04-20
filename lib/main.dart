import 'package:device_preview/device_preview.dart';
import 'package:draw_guess/core/core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    ProviderScope(
      child: DevicePreview(
        builder: (context) {
          return const DrawGuessApp();
        },
      ),
    ),
  );
}
