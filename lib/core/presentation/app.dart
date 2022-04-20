import 'package:draw_guess/core/core.dart';

class DrawGuessApp extends HookConsumerWidget {
  const DrawGuessApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = useRef(AppRouter());
    final authNotifier = ref.watch(authNotifierProvider.notifier);
    useEffect(() {
      authNotifier.isSignedIn();
      return () {};
    });
    return Consumer(
      builder: (_, ref, __) => MaterialApp.router(
        title: 'Draw & Guess',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routerDelegate: appRouter.value.declarativeDelegate(
          routes: (_) => [
            ref.watch(authNotifierProvider).when(
                  initial: () => const SplashRoute(),
                  inProgress: () => const SplashRoute(),
                  authenticated: () => const DrawingBoardRoute(),
                  unauthenticated: () => const SignInRoute(),
                  failure: (_) => const SignInRoute(),
                ),
          ],
        ),
        routeInformationParser: appRouter.value.defaultRouteParser(),
      ),
    );
  }
}
