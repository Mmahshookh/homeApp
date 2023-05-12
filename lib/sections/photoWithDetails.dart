import 'package:flutter/material.dart';

import '../pages/detailPage.dart';

class PhotoWithDetails extends StatelessWidget {
  final String houseName;
  final String housePrice;
  final String houseImage;
  const PhotoWithDetails(
      {Key? key,
      required this.houseName,
      required this.housePrice,
      required this.houseImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailPage(
                      title: houseName,
                      image: houseImage,
                      price: housePrice,
                    )));
      },
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 5),
            height: 230,
            width: 150,
            child: Column(
              children: [
                SizedBox(
                  height: 185,
                  width: 140,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        houseImage,
                        fit: BoxFit.cover,
                      )),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(houseName),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "\$" + housePrice,
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
