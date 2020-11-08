import 'package:flutter/material.dart';
import 'package:furniture_shop/screens/signupScreen.dart';
import 'package:furniture_shop/screens/startShopping.dart';
import 'package:furniture_shop/widgets/button.dart';
import 'package:furniture_shop/widgets/inputField.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
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
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text('LOGIN', style: Get.context.textTheme.headline4),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Inputfield(
                  hintText: 'Email',
                ),
                Inputfield(
                  obscureText: true,
                  hintText: 'Password',
                ),
                SizedBox(height: size.width * 0.25),
                Button(
                  buttonText: 'LOGIN',
                  color: Get.context.theme.buttonColor,
                  textColor: Colors.white,
                  onPressed: () {
                    Get.to(StartShopping());
                  },
                ),
                Center(
                  heightFactor: 4,
                  child: Text(
                    'Forgot your password?',
                    style: Get.context.textTheme.headline6,
                  ),
                ),
                SizedBox(height: size.width * 0.15),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    'LOGIN WITH FACEBOOK',
                    style: TextStyle(
                        color: Colors.blue[600],
                        fontWeight: FontWeight.w300,
                        fontSize: 16),
                  ),
                  height: 45,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.blue[600], width: 2.0)),
                ),
                SizedBox(height: size.width * 0.13),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Get.off(SignupScreen());
                    },
                    child: Text(
                      'Don\'t have an account? Sign up',
                      style: Get.context.textTheme.headline6,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
