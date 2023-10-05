import 'package:flutter/material.dart';
import 'package:login_page/constants.dart';
import 'custom_widgets/custom_painter.dart';
import 'custom_widgets/text_field.dart';
import 'custom_widgets/button_round.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Container(
            width: size.width,
            height: size.height,
            color: KGreen.withOpacity(0.14),
            child: Stack(
              children: [

                Center(
                  child: SizedBox(
                    width: size.width,
                    height: size.height,
                    child: CustomPaint(
                      painter: BackgrounPainter(),
                    ),
                  ),
                ),

                Positioned(
                    top: size.height * 0.05,
                    left: size.width * 0.12,
                    child: Text(
                        'Common \n      Memory',
                      style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'Montserrat Thin',
                        fontWeight: FontWeight.bold,
                        color: Colors.white.withOpacity(0.7)
                      ),
                    )),

                Positioned(
                  top: size.height * 0.30,
                  right: size.width * 0.03,
                    child: Container(
                      width: size.width * 0.33,
                      height: size.height * 0.07,
                      color: Colors.transparent,
                      child: const Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 36,
                                fontFamily: 'Montserrat SemiBold',
                              color: KGrape
                            ),)),
                    )
                ),

                Positioned(
                    top: size.height * 0.39,
                    left: 0,
                    child: const LoginTextField(),
                ),

                Positioned(
                    bottom: size.height * 0.1,
                    left: size.width * 0.2,
                    child: Container(
                      width: size.width * 0.6,
                      height: size.height * 0.08,
                      color: Colors.transparent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ButtonRound(child: Image.asset('assets/icons/google.png'),),
                          ButtonRound(child: Image.asset('assets/icons/facebook.png'),),
                          ButtonRound(child: Image.asset('assets/icons/twitter.png'),),
                        ],
                      ),
                    )),

                Positioned(
                    bottom: size.height * 0.03,
                    left: size.width * 0.25,
                    child: SizedBox(
                      width: size.width * 0.6,
                      height: size.height * 0.05,
                      child: RichText(
                          text: TextSpan(
                              text: 'Don`t have an account? ',
                              style: TextStyle(color: Colors.black.withOpacity(0.8), fontSize: 15),
                              children: [
                                TextSpan(
                                    text: 'Sign up',
                                    style: TextStyle(color: KGrape.withOpacity(0.8), fontSize: 15))
                              ])
                      ),
                    ))


              ],
            ),
          ),
        ),
      ),
    );
  }
}
