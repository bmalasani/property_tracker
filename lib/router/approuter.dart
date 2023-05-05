import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:property_track/pages/welcome_page.dart';

final appGoRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => WelcomePage(),
  )
]);
