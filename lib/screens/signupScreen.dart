import 'package:flutter/material.dart';
import 'package:furniture_shop/screens/loginScreen.dart';
import 'package:furniture_shop/screens/startShopping.dart';
import 'package:furniture_shop/widgets/button.dart';
import 'package:furniture_shop/widgets/inputField.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: body(context),
      resizeToAvoidBottomPadding: false,
    );
  }

  body(BuildContext context) {
    Size size = Get.mediaQuery.size;
    return Container(
      height: size.height,
      width: size.width,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Personal details',
              style: Get.context.textTheme.headline4,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                Inputfield(hintText: 'Email'),
                Inputfield(hintText: 'Password'),
                Inputfield(hintText: 'Phone'),
                Inputfield(hintText: 'Date of birth'),
                Inputfield(hintText: 'Address'),
              ],
            ),
          ),
          Button(
            buttonText: 'Sign up',
            color: Get.context.theme.buttonColor,
            textColor: Colors.white,
            onPressed: () {
              Get.off(StartShopping());
            },
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: () {
                  Get.off(LoginScreen());
                },
                child: Text(
                  'Already have an account? Login',
                  style: Get.context.textTheme.headline6,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
