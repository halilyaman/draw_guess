import 'package:draw_guess/core/core.dart';

class DrawGuessApp extends HookConsumerWidget {
  const DrawGuessApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = useRef(AppRouter());
    final authNotifier = ref.watch(authNotifierProvider.notifier);
    useEffect(() {
      App.navigatorKey = appRouter.value.navigatorKey;
      authNotifier.isSignedIn();
      return () {};
    });
    return Consumer(
      builder: (_, ref, __) => MaterialApp.router(
        title: 'Draw & Guess',
        useInheritedMediaQuery: true,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routerDelegate: appRouter.value.declarativeDelegate(
          routes: (_) => [
            ref.watch(authNotifierProvider).when(
                  initial: () => const SplashRoute(),
                  inProgress: () => const SplashRoute(),
                  authenticated: () => const HomeRouter(),
                  unauthenticated: () => const SignInRoute(),
                  failure: (_) => const SignInRoute(),
                ),
          ],
        ),
        routeInformationParser: appRouter.value.defaultRouteParser(),
        builder: (context, child) {
          final theme = Theme.of(context);
          final isThemeDark = theme.brightness == Brightness.dark;
          return Toast(
            navigatorKey: appRouter.value.navigatorKey,
            child: FlashTheme(
              flashBarTheme: isThemeDark
                  ? const FlashBarThemeData.dark()
                  : const FlashBarThemeData.light(),
              flashDialogTheme: const FlashDialogThemeData(),
              child: child!,
            ),
          );
        },
      ),
    );
  }
}

class App {
  App._();

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
}
