


import 'package:flutter/material.dart';

import '../screens/welcom_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      home: WelcomeScreen(



      ),
    );
  }
}
