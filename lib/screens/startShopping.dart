import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:furniture_shop/screens/homeScreen.dart';
import 'package:furniture_shop/widgets/button.dart';
import 'package:get/get.dart';

class StartShopping extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(context),
    );
  }

  body(BuildContext context) {
    return Container(
      width: Get.mediaQuery.size.width,
      padding: EdgeInsets.symmetric(vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Discover',
                  style: Get.context.textTheme.headline4,
                ),
                Text(
                    'Discover the style you need for your\n                home decoration',
                    style: Theme.of(context).textTheme.headline6),
              ],
            ),
          ),
          Expanded(
            child: Swiper(
              autoplay: true,
              itemCount: 4,
              pagination: SwiperPagination(
                alignment: Alignment.bottomCenter,
                builder: DotSwiperPaginationBuilder(
                  color: Color(0xffF1F2F6),
                  size: 8.0,
                  activeSize: 10.0,
                  space: 3.0,
                  activeColor: Colors.black,
                ),
              ),
              itemBuilder: (context, index) {
                return Image.asset(
                  [
                    'assets/images/clock1.png',
                    'assets/images/lamp.png',
                    'assets/images/vase.png',
                    'assets/images/sofa.png'
                  ][index],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
            child: Button(
              buttonText: 'Start shopping',
              textColor: Colors.white,
              color: Get.context.theme.buttonColor,
              onPressed: () {
                Get.to(HomeScreen());
              },
            ),
          ),
        ],
      ),
    );
  }
}
