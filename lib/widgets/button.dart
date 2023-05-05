import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;

  final Color color;
  final Color textColor;
  final bool isRounded;

  final void Function()? onPress;

  const Button({
    super.key,
    required this.text,
    this.onPress,
    required this.color,
    this.isRounded = false,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ClipRRect(
        borderRadius: isRounded ? BorderRadius.circular(29) : BorderRadius.zero,
        child: ElevatedButton(
            onPressed: onPress,
            style: ElevatedButton.styleFrom(
              backgroundColor: color,
              elevation: 0,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
              child: Text(
                text,
                style: TextStyle(fontSize: 16, color: textColor),
              ),
            )),
      ),
    );
  }
}
