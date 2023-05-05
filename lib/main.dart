import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property_track/router/approuter.dart';
import 'package:property_track/theme/theme.dart';

void main() {
  runApp(const _App());
}

class _App extends StatelessWidget {
  const _App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appGoRouter,
      title: 'Property Tracker',
      theme: AppTheme.appTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
