import 'package:flutter/material.dart';
import 'package:flutter_app_test/pages/otp_page.dart';
import 'package:flutter_app_test/profile/profil_page.dart';
import 'package:flutter_app_test/pages/sign_up_hp_page.dart';
import 'package:flutter_app_test/pages/sign_up_page.dart';
import 'package:flutter_app_test/profile/edit_profile.dart';

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
      initialRoute: '/editprofile', // halaman pertama kali dibuka
      routes: {
        '/signUp': (context) => const SignUpPage(),
        '/signUpHp': (context) => const SignUpPageHp(),
        '/otp': (context) => const OtpPage(),
        '/profile': (context) => const ProfilePage(),
        '/editprofile': (context) => const EditProfilePage(),
      },
    );
  }
}
