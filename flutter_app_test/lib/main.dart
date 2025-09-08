import 'package:flutter/material.dart';
import 'package:flutter_app_test/pages/otp_page.dart';
import 'package:flutter_app_test/pages/profil_page.dart';
import 'package:flutter_app_test/pages/sign_up_hp_page.dart';
import 'package:flutter_app_test/pages/sign_up_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/profile', // halaman pertama kali dibuka
      routes: {
        '/signUp': (context) => const SignUpPage(),
        '/signUpHp': (context) => const SignUpPageHp(),
        '/otp': (context) => const OtpPage(),
        '/profile': (context) => const ProfilePage(),
      },
    );
  }
}
