import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:furniture_shop/models/model.dart';
import 'package:furniture_shop/widgets/collectionCard.dart';
import 'package:furniture_shop/widgets/discoverCard.dart';
import 'package:furniture_shop/widgets/drawerButton.dart';
import 'package:furniture_shop/widgets/itemShopCard.dart';
import 'package:furniture_shop/widgets/seeAll.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      drawer: drawer(context),
      body: body(context),
    );
  }

  appBar() {
    return AppBar(
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.shopping_bag_outlined),
          onPressed: () {},
        ),
      ],
    );
  }

  drawer(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.amber,
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FlatIconButton(
                  iconData: Icons.ac_unit_outlined,
                  title: 'Home',
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  body(BuildContext context) {
    Size size = Get.mediaQuery.size;
    return ListView(
      // crossAxisAlignment: CrossAxisAlignment.start,
      controller: ScrollController(),
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      children: [
        Text(
          'Discover',
          style: Get.textTheme.headline4,
        ),
        SizedBox(
          height: size.width * 0.69,
          child: ListView.builder(
            itemCount: discoverData.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return DiscoverCard(
                size: size,
                cardColor: index.isEven ? Color(0xffF1F2F6) : Color(0xffF9C678),
                discoverData: discoverData[index],
              );
            },
          ),
        ),
        SeeAll(
          text: 'Trending',
          buttonText: 'Show all',
          textStyle:
              GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 21),
        ),
        SizedBox(
          height: size.width * 0.88,
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return ItemShopCard(
                size: size,
                itemsData: treandingData[index],
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: SizedBox(
            height: size.width * 0.6,
            child: Swiper(
              itemCount: collectionData.length,
              scale: 0.97,
              loop: false,
              viewportFraction: 0.9,
              itemBuilder: (context, index) {
                return CollectionCard(collecData: collectionData[index]);
              },
            ),
          ),
        ),
        SeeAll(
          text: 'Best Selling',
          buttonText: 'Show all',
          textStyle:
              GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 21),
        ),
        SizedBox(
          height: size.width * 0.88,
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return ItemShopCard(
                size: size,
                itemsData: bestSellingData[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
