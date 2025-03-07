import 'package:animate_do/animate_do.dart';
import 'package:animated_login_v1/pages/homepage.dart';
import 'package:animated_login_v1/pages/regis.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:sizer/sizer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var focusNodeEmail = FocusNode();
  var focusNodePassword = FocusNode();
  bool isFocusedEmail = false;
  bool isFocusedPassword = false;

  @override
  void initState() {
    // TODO: implement initState
    focusNodeEmail.addListener(() {
      setState(() {
        isFocusedEmail = focusNodeEmail.hasFocus;
      });
    });
    focusNodePassword.addListener(() {
      setState(() {
        isFocusedPassword = focusNodePassword.hasFocus;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
              height: 100.h,
              decoration: const BoxDecoration(color: Colors.white),
              padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 2.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  FadeInDown(
                    delay: const Duration(milliseconds: 900),
                    duration: const Duration(milliseconds: 1000),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          IconlyBroken.arrow_left,
                          size: 3.6.h,
                        )),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FadeInDown(
                          delay: const Duration(milliseconds: 800),
                          duration: const Duration(milliseconds: 900),
                          child: Text(
                            'Mari masuk ke Apps',
                            style: TextStyle(
                              fontSize: 25.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        FadeInDown(
                          delay: const Duration(milliseconds: 700),
                          duration: const Duration(milliseconds: 800),
                          child: Text(
                            'Selamat Datang.',
                            style: TextStyle(
                              fontSize: 25.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        FadeInDown(
                          delay: const Duration(milliseconds: 600),
                          duration: const Duration(milliseconds: 700),
                          child: Text(
                            'Kamu sudah ditunggu!',
                            style: TextStyle(
                              fontSize: 25.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  FadeInDown(
                    delay: const Duration(milliseconds: 700),
                    duration: const Duration(milliseconds: 800),
                    child: const Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  FadeInDown(
                    delay: const Duration(milliseconds: 600),
                    duration: const Duration(milliseconds: 700),
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 0.8.h),
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.w, vertical: .3.h),
                      decoration: BoxDecoration(
                          color: isFocusedEmail
                              ? Colors.white
                              : const Color(0xFFF1F0F5),
                          border: Border.all(
                              width: 1, color: const Color(0xFFD2D2D4)),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            if (isFocusedEmail)
                              BoxShadow(
                                  color:
                                      const Color(0xFF835DF1).withOpacity(.3),
                                  blurRadius: 4.0,
                                  spreadRadius: 2.0
                                  // Glow Color
                                  )
                          ]),
                      child: TextField(
                        style: const TextStyle(fontWeight: FontWeight.w500),
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Your_email@gmail.com'),
                        focusNode: focusNodeEmail,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  FadeInDown(
                    delay: const Duration(milliseconds: 500),
                    duration: const Duration(milliseconds: 600),
                    child: const Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  FadeInDown(
                    delay: const Duration(milliseconds: 400),
                    duration: const Duration(milliseconds: 500),
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 0.8.h),
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.w, vertical: .3.h),
                      decoration: BoxDecoration(
                          color: isFocusedPassword
                              ? Colors.white
                              : const Color(0xFFF1F0F5),
                          border: Border.all(
                              width: 1, color: const Color(0xFFD2D2D4)),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            if (isFocusedPassword)
                              BoxShadow(
                                  color:
                                      const Color(0xFF835DF1).withOpacity(.3),
                                  blurRadius: 4.0,
                                  spreadRadius: 2.0
                                  // Glow Color
                                  )
                          ]),
                      child: TextField(
                        style: const TextStyle(fontWeight: FontWeight.w500),
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.visibility_off_outlined,
                              color: Colors.grey,
                              size: 16.sp,
                            ),
                            border: InputBorder.none,
                            hintText: 'Password'),
                        focusNode: focusNodePassword,
                      ),
                    ),
                  ),
                  const Expanded(
                      child: SizedBox(
                    height: 10,
                  )),
                  FadeInUp(
                    delay: const Duration(milliseconds: 600),
                    duration: const Duration(milliseconds: 700),
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HomePage(),
                                  ));
                            },
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                textStyle: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Satoshi'),
                                backgroundColor: const Color(0xFF835DF1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16)),
                            child: FadeInUp(
                                delay: const Duration(milliseconds: 700),
                                duration: const Duration(milliseconds: 800),
                                child: const Text(
                                  'Masuk',
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                  FadeInUp(
                    delay: const Duration(milliseconds: 800),
                    duration: const Duration(milliseconds: 900),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Anda belum punya akun ?',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const RegisPage(),
                                  ));
                            },
                            child: const Text(
                              'Daftar',
                              style: TextStyle(
                                color: Color(0xFF835DF1),
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
