
import 'package:go_router/go_router.dart';
import 'package:mini_whatsapp/features/Splash/screens/welcome_screen.dart';
import 'package:mini_whatsapp/features/authentication/login/login_screen.dart';
import 'package:mini_whatsapp/features/authentication/login/otp/otp_Screen.dart';

abstract class AppRouter {
  static const kLoginScreen = '/loginScreen';
  static const kOtpScreen = '/otpScreen';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const WelcomeScreen(),
      ),
      GoRoute(
        path: kLoginScreen,
        builder: (context, state) => const LoginScreen(

        ),
      ),
      // GoRoute(
      //   path: kOtpScreen,
      //   builder: (context, state) => const OtpScreen(
      //     verificationId: ,
      //   ),
      // )
    ],
  );
}
