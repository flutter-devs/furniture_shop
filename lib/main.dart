import 'package:flutter/material.dart';
import 'package:furniture_shop/screens/splashScreen.dart';
import 'package:furniture_shop/theme/appTheme.dart';
import 'package:get/get.dart';

void main() {
  runApp(FurnitureShop());
}

class FurnitureShop extends StatefulWidget {
  @override
  _FurnitureShopState createState() => _FurnitureShopState();
}

class _FurnitureShopState extends State<FurnitureShop> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Furniture Shop',
      theme: lighttheme(),
      themeMode: ThemeMode.system,
      // darkTheme: darktheme(),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
