import 'package:flutter/material.dart';
import 'package:login_page/constants.dart';
import 'package:login_page/custom_widgets/castom_button.dart';

class LoginTextField extends StatefulWidget {
  const LoginTextField({Key? key}) : super(key: key);

  @override
  State<LoginTextField> createState() => _LoginTextFieldState();
}

class _LoginTextFieldState extends State<LoginTextField> {
  @override

  final _emailTextController = TextEditingController(text: 'julie@mail.ru');
  final _passwordTextController = TextEditingController(text: '1234');
  String text = '';
  String textValue = '';

  void _auth() {
    final login = _emailTextController.text;
    final password = _passwordTextController.text;
        if (login == 'julie@mail.ru' && password == '1234') {
      setState(() {
        text = '';
      });
    } else {
      setState(() {
        text = '* Incorrect! Try again!';
      });
    }
  }

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.35,
      color: Colors.transparent,
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.07),
      child: Stack(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: size.width * 0.86,
                        height: size.height * 0.06,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(30)),
                            border: Border.all(color: Colors.white.withOpacity(0.3), width: 2.0),
                            color: KGrape.withOpacity(0.8)
                        ),
                        padding: const EdgeInsets.only(right: 10),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.email, size: 27, color: Colors.white,),
                          ],
                        ),
                      )],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: size.width * 0.74,
                        height: size.height * 0.06,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Color(0xfffffaf0),
                        ),
                        child: Center(
                          child: TextField(
                            onChanged: (val) {
                              setState(() {
                                textValue = val;
                              });
                            },
                            controller: _emailTextController,
                            style: const TextStyle(color: Colors.black, fontSize: 22),
                            cursorColor: KGrape,
                            textAlign: TextAlign.center,
                            textAlignVertical: TextAlignVertical.bottom,
                            decoration: InputDecoration(
                              hintText: 'Email',
                              hintStyle: TextStyle(color: KGrape.withOpacity(0.4), fontSize: 22, fontFamily: 'Montserrat Thin', fontWeight: FontWeight.bold),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(Radius.circular(30)),
                                borderSide: BorderSide(color: KGrape.withOpacity(0.4), width: 3)
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                                  borderSide: BorderSide(color: KGrape.withOpacity(0.5), width: 2)
                              )
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.02,),
              Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: size.width * 0.86,
                        height: size.height * 0.06,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(30)),
                            border: Border.all(color: Colors.white.withOpacity(0.3), width: 2.0),
                            color: KGrape.withOpacity(0.8)
                        ),
                        padding: const EdgeInsets.only(left: 12),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.key_outlined, size: 27, color: Colors.white,),
                          ],
                        ),
                      )],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: size.width * 0.74,
                        height: size.height * 0.06,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            //color: Color(0xfffdf5e6),
                            color: Color(0xfffffaf0),
                        ),
                        child: Center(
                          child: TextField(
                            onChanged: (val) {
                              setState(() {
                                textValue = val;
                              });
                            },
                            controller: _passwordTextController,
                            style: const TextStyle(color: Colors.black, fontSize: 22),
                            cursorColor: KGrape,
                            textAlign: TextAlign.center,
                            textAlignVertical: TextAlignVertical.bottom,
                            decoration: InputDecoration(
                                hintText: 'Email',
                                hintStyle: TextStyle(color: KGrape.withOpacity(0.5), fontSize: 22, fontFamily: 'Montserrat Thin', fontWeight: FontWeight.bold),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                                    borderSide: BorderSide(color: KGrape.withOpacity(0.4), width: 3)
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                                    borderSide: BorderSide(color: KGrape.withOpacity(0.4), width: 2)
                                )
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: size.height * 0.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(text, style: const TextStyle(color: Colors.red, fontSize: 15, fontFamily: 'Montserrat Thin', fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: size.height * 0.03,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: size.width * 0.49),
                  const Text('Forgot Password?', style: TextStyle(color: KGrape, fontSize: 15, fontFamily: 'Montserrat SemiBold', fontWeight: FontWeight.normal),),
                ],
              ),
              SizedBox(height: size.height * 0.04,),
              //Text('text is: $textValue'),
              CustomButton(onTap: _auth),
            ],
          ),
        ],
      ),
    );
  }
}
