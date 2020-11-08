import 'package:flutter/material.dart';
import 'package:furniture_shop/models/model.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CollectionCard extends StatelessWidget {
  const CollectionCard({
    Key key,
    this.collecData,
  }) : super(key: key);
  final CollecData collecData;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 10, 5, 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color(0xffF1F2F6),
        image: DecorationImage(image: AssetImage(collecData.image)),
        boxShadow: [
          BoxShadow(
            offset: Offset(2, 5),
            color: Colors.blueGrey[300],
            blurRadius: 15,
            spreadRadius: -5,
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            collecData.sub,
            style: Get.context.textTheme.caption,
          ),
          Text(
            collecData.title,
            style: Get.context.textTheme.headline4,
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: FlatButton(
                padding: EdgeInsets.zero,
                child: Text(
                  'Shop Now',
                  style: GoogleFonts.nunito(
                      fontSize: 13, decoration: TextDecoration.underline),
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
