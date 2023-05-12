import 'package:flutter/material.dart';

class OfferSection extends StatelessWidget {
  final String houseName;
  final String houseSmallName;
  final String houseImage;
  final String housePrice;
  const OfferSection(
      {Key? key,
      required this.houseName,
      required this.houseSmallName,
      required this.houseImage,
      required this.housePrice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 15),
      height: 180,
      width: 270,
      child: Row(
        children: [
          SizedBox(
              height: 200,
              width: 130,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    houseImage,
                    fit: BoxFit.cover,
                  ))),
          Container(
            padding: EdgeInsets.only(left: 8, top: 18, bottom: 25),
            height: 180,
            width: 140,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  houseName,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  houseSmallName,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                Spacer(),
                Text(
                  "\$" + housePrice,
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
