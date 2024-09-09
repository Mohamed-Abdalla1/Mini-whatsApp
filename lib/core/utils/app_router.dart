
import 'package:go_router/go_router.dart';
import 'package:mini_whatsapp/features/Splash/screens/welcome_screen.dart';
import 'package:mini_whatsapp/features/authentication/login/login_screen.dart';

abstract class AppRouter {
  static const kLoginScreen = '/bookDetailsView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const WelcomeScreen(),
      ),
      GoRoute(
        path: kLoginScreen,
        builder: (context, state) => const LoginScreen(),
      )
    ],
  );
}
