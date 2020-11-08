import 'package:flutter/material.dart';
import 'package:furniture_shop/screens/loginScreen.dart';
import 'package:furniture_shop/screens/signupScreen.dart';
import 'package:furniture_shop/widgets/button.dart';
import 'package:get/get.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(context),
    );
  }

  body(BuildContext context) {
    Size size = Get.mediaQuery.size;
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/landing.jpg'), fit: BoxFit.cover),
      ),
      padding: EdgeInsets.symmetric(vertical: 70, horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'Home\n',
              style: Theme.of(context).textTheme.headline4,
              children: <TextSpan>[
                TextSpan(
                  text: 'Decor',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Wrap(
              spacing: 20,
              children: [
                Button(
                  buttonText: 'Sign up',
                  color: Colors.white,
                  textColor: Colors.black,
                  onPressed: () {
                    Get.to(SignupScreen());
                  },
                ),
                SizedBox(height: 20),
                Button(
                  buttonText: 'Login',
                  color: Get.context.theme.buttonColor,
                  textColor: Colors.white,
                  onPressed: () {
                    Get.to(LoginScreen());
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
