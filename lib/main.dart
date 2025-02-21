import 'package:animated_login_v1/pages/homepage.dart';
import 'package:animated_login_v1/pages/login.dart';
import 'package:animated_login_v1/pages/CartPage.dart';
import 'package:animated_login_v1/pages/regis.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const AnimatedLogin());
}

class AnimatedLogin extends StatelessWidget {
  const AnimatedLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp(
        // theme: ThemeData(fontFamily: 'Satoshi'), home: const WelcomePage()),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Satoshi'),
        //rute default nya
        // home: const LoginPage(),
        // end rute default nya

        routes: {
          "/": (context) => const LoginPage(),
           "loginPage": (context) => const LoginPage(),
          // "regisPage": (context) => RegisPage(),
          "cartPage": (context) => const CartPage(),
        },
      ),
    );
  }

  // contoh yang menggunakan routes
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     routes: {
  //       '/': (context) => SplashPage(),
  //       '/sign-in': (context) => SignInPage(),
  //       '/sign-up': (context) => SignUpPage(),
  //       '/home': (context) => MainPage(),
  //     },
  //   );
  // }
}
