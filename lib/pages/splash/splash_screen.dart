import 'package:flutter/material.dart';

import '../../constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: kPrimaryColor,
            ),
          ),
          Expanded(
            child: Container(),
          )
        ],
      ),
    );
  }
}
