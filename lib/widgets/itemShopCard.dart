import 'package:flutter/material.dart';
import 'package:furniture_shop/models/model.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemShopCard extends StatelessWidget {
  const ItemShopCard({
    Key key,
    @required this.size,
    @required this.itemsData,
  }) : super(key: key);

  final Size size;
  final TrendingData itemsData;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.width * 0.3,
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(image: AssetImage(itemsData.image)),
                color: Color(0xffF1F2F6),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    itemsData.title,
                    style: Get.context.textTheme.bodyText1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        itemsData.price,
                        style:
                            GoogleFonts.nunito(color: Colors.red, fontSize: 16),
                      ),
                      FlatButton(
                        minWidth: 20,
                        height: 36,
                        color: Colors.black,
                        onPressed: () {},
                        child: Text('Shop'),
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Divider(
                        thickness: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
