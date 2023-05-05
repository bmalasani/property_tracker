import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: double.infinity,
      child: Stack(alignment: Alignment.topCenter, children: [
        Positioned(
          top: 0,
          left: 0,
          child: SizedBox(
            width: size.width,
            height: 360,
            child: Image.asset(
              "assets/images/welcome-bg-lg.jpg",
              fit: BoxFit.fitWidth,
              alignment: Alignment.center,
            ),
          ),
        ),
        Positioned(
          top: 340,
          child: Container(
            width: size.width,
            height: size.height - 340,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10)),
          ),
        ),
        Positioned(
            top: 270,
            child: Image.asset(
              "assets/images/logo.png",
              width: 150,
              height: 150,
            )),
        child,
      ]),
    );
  }
}
