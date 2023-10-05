import 'package:flutter/material.dart';
import 'package:login_page/constants.dart';

class ButtonRound extends StatelessWidget {
  const ButtonRound({Key? key, required this.child}) : super(key: key);

  final dynamic child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.15,
      height: size.height * 0.07,
      padding: EdgeInsets.all(size.width * 0.03,),
      decoration: BoxDecoration(
       // color: const Color(0xffd5cbc0),
        color: const Color(0xfffffaf0),
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          const BoxShadow(
            color: KVioletDark,
            blurRadius: 17,
            offset: Offset(3, 3),),
          BoxShadow(
            color: Colors.black.withOpacity(0.6),
            blurRadius: 17,
            offset: const Offset(-3, -3),
          )
        ]
      ),
      child: child,
    );
  }
}
