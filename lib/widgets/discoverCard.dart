import 'package:flutter/material.dart';
import 'package:furniture_shop/models/model.dart';

class DiscoverCard extends StatelessWidget {
  const DiscoverCard({
    Key key,
    @required this.size,
    this.discoverData,
    this.cardColor,
  }) : super(key: key);

  final Size size;
  final DiscoverData discoverData;
  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: size.width * 0.48,
          width: size.width * 0.4,
          margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: cardColor),
          child: Image.asset(discoverData.image),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: RichText(
            // textAlign: TextAlign.center,
            text: TextSpan(
              text: discoverData.title + '\n',
              style: Theme.of(context).textTheme.bodyText1,
              children: <TextSpan>[
                TextSpan(
                  text: discoverData.items,
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
