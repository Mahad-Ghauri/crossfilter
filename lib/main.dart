import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/sign_in_screen.dart';
import 'screens/sign_up_screen.dart';
import 'screens/forgot_password_screen.dart';
import 'screens/otp_screen.dart';
import 'screens/two_step_verification_screen.dart';
import 'screens/home_with_navbar_screen.dart';
import 'screens/home_without_navbar_screen.dart';

void main() {
  runApp(const CrossFilterApp());
}

class CrossFilterApp extends StatelessWidget {
  const CrossFilterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cross Filter',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Roboto'),
      home: const SplashScreen(),
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/signin': (context) => const SignInScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/forgot-password': (context) => const ForgotPasswordScreen(),
        '/otp': (context) => const OTPScreen(),
        '/two-step-verification': (context) =>
            const TwoStepVerificationScreen(),
        '/home-with-navbar': (context) => const HomeWithNavbarScreen(),
        '/home-without-navbar': (context) => const HomeWithoutNavbarScreen(),
      },
    );
  }
}
