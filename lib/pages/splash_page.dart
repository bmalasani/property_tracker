import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPersistentFrameCallback((timeStamp) {
      timer();
    });
    super.initState();
  }

  void timer() async {
    Future.delayed(new Duration(seconds: 2)).then((value) => null);
  }

  Widget _body(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var height = 150.0;
    return SizedBox(
      height: size.height,
      width: Size.infinite.width,
      child: Container(
        height: height,
        width: height,
        alignment: Alignment.center,
        child: Container(
          padding: const EdgeInsets.all(50),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Platform.isIOS
                  ? const CupertinoActivityIndicator(
                      radius: 35,
                    )
                  : const CircularProgressIndicator(
                      strokeWidth: 2,
                    ),
              SvgPicture.asset(
                "assets/icons/proptrack.svg",
                height: size.height * 0.45,
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _body(context),
    );
  }
}
