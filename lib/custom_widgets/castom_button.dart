import 'package:flutter/material.dart';
import 'package:login_page/constants.dart';

class CustomButton extends StatefulWidget {

  final dynamic child;
  final Function() onTap;

  const CustomButton({Key? key,
    this.child,
    required this.onTap,
  }) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {

  bool isPressed = true;
  void _isPressed() {
    setState(() {
      isPressed = !isPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTapUp: (_) {
        _isPressed();
        widget.onTap.call();
      },
      onTapDown: (_) {
        _isPressed();
      },
      onTapCancel: () {
        _isPressed();
      },

      child: AnimatedCrossFade(
        duration: const Duration(milliseconds: 500),
        crossFadeState: isPressed
            ? CrossFadeState.showSecond
            : CrossFadeState.showFirst,
        firstChild: Container(
            width: size.width * 0.82,
            height: size.height * 0.064,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.black.withOpacity(0.8), KVioletDark, KLavender],
                    stops: const [0, 0.2, 0.8]
                ),
            ),
            child: const Center(child: Text('Login', style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'Montserrat SemiBold'),))
        ),
        secondChild: Container(
            width: size.width * 0.85,
            height: size.height * 0.064,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.black.withOpacity(0.8), KVioletDark, KLavender],
                    stops: const [0, 0.2, 0.8]
                ),
            ),
            child: const Center(child: Text('Login', style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'Montserrat SemiBold'),))
        ),
      )
    );
  }
}
