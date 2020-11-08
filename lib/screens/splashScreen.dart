import 'package:flutter/material.dart';
import 'package:furniture_shop/screens/landingScreen.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Tween<double> tween = Tween(begin: 0.0, end: 1.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TweenAnimationBuilder(
          tween: tween,
          duration: Duration(seconds: 4),
          builder: (context, value, child) {
            return Opacity(
              opacity: value,
              child: RichText(
                text: TextSpan(
                  text: 'Home ',
                  style: Theme.of(context).textTheme.headline4,
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Decor',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ],
                ),
              ),
            );
          },
          onEnd: () {
            Get.off(LandingScreen());
          },
        ),
      ),
    );
  }
}
