import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:property_track/responsive.dart';
import 'package:property_track/widgets/button.dart';
import 'package:property_track/widgets/background.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
        child: Responsive(
            mobile: Background(
              child: SingleChildScrollView(
                child: SizedBox(
                  height: size.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          "Prop Track",
                          style: TextStyle(
                              fontSize: 36, fontWeight: FontWeight.w200),
                        ),
                      ),
                      Button(
                        onPress: () {},
                        color: Colors.green,
                        textColor: Colors.white,
                        text: "Acknowledge",
                      )
                    ],
                  ),
                ),
              ),
            ),
            desktop: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 8,
                  child: Image.asset(
                    "assets/images/welcome-bg-lg.jpg",
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.center,
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    color: Colors.grey[300],
                    child: Column(
                      children: [
                        Spacer(),
                        Expanded(
                          child: Text(
                            "Prop Track",
                            style: TextStyle(fontSize: 36),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )));
  }
}
