import 'package:bank_sha/ui/pages/home_page.dart';
import 'package:bank_sha/ui/pages/onboarding_page.dart';
import 'package:bank_sha/ui/pages/sign_in_page.dart';
import 'package:bank_sha/ui/pages/sign_up_page.dart';
import 'package:bank_sha/ui/pages/sign_up_set_ktp_page%20copy.dart';
import 'package:bank_sha/ui/pages/sign_up_set_profile_page.dart';
import 'package:bank_sha/ui/pages/sign_up_success_page.dart';
import 'package:bank_sha/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
          '/': (context) => const SplashPage(),
          '/onboarding': (context) => const OnboardingPage(),
          '/sign-in': (context) => const SignInPage(),
          '/sign-up': (context) => const SignUpPage(),
          '/sign-up-set-profile': (context) => const SignUpSetProfile(),
          '/sign-up-set-ktp': (context) => const SignUpSetKtp(),
          '/sign-up-success': (context) => const SignUpSuccessPage(),
          '/home': (context) => const HomePage(),
          // '/sign-up-success': (context) => const SignUpSuccessPage(),
          // '/home': (context) => const HomePage(),
          // '/profile': (context) => const ProfilePage(),
          // '/pin': (context) => const PinPage(),
          // '/profile-edit-success': (context) => const ProfileEditSuccessPage(),
          // '/topup': (context) => const TopupPage(),
          // '/topup-success': (context) => const TopupSuccessPage(),
          // '/transfer': (context) => const TransferPage(),
          // '/transfer-success': (context) => const TransferSuccessPage(),
          // '/data-provider': (context) => const DataProviderPage(),
          // '/data-success': (context) => const DataSuccessPage(),
      },
    );
  }
}
