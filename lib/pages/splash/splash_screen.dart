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
              child: PageView(
            scrollDirection: Axis.horizontal,
            children: [
              SplashImags(
                image: 'images/food.jpg',
              ),
              SplashImags(
                image: 'images/food.jpg',
              ),
              SplashImags(
                image: 'images/food.jpg',
              ),
            ],
          )),
          Expanded(
            child: Column(
              children: [
                Spacer(),
                Text(
                    'Choose your favorite dishes\n from the nearest resturant\nor cafe',
                    textAlign: TextAlign.center,
                  style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: kPrimaryColor),
                ),
                Spacer(),
                Container(
                  height: 6,
                  width: 20,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Spacer(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SplashImags extends StatelessWidget {
  const SplashImags({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ClipperClass(),
      child: SizedBox(
        width: double.infinity,
        child: Image.asset(
          image,
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
}

class ClipperClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.width);
    path.quadraticBezierTo(
        size.width / 9, size.height, size.width / 4, size.height);
    path.quadraticBezierTo(size.width - (size.width / 2), size.height,
        size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
