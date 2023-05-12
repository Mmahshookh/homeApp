import 'package:flutter/material.dart';
import 'package:homeapp/sections/photoWithDetails.dart';

import '../pages/detailPage.dart';

class HomeDetails extends StatelessWidget {
  const HomeDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PhotoWithDetails(
          houseName: 'Manus House 1',
          housePrice: '224',
          houseImage: 'assets/images/pexels-fomstock-com-1115804.jpg',
        ),
        PhotoWithDetails(
          houseName: 'House 1',
          housePrice: '224',
          houseImage: "assets/images/pexels-thgusstavo-santana-2102587.jpg",
        ),
        PhotoWithDetails(
          houseName: 'House 1',
          housePrice: '224',
          houseImage: "assets/images/pexels-julia-kuzenkov-1974596.jpg",
        ),
        PhotoWithDetails(
          houseName: 'House 1',
          housePrice: '224',
          houseImage: 'assets/images/pexels-fomstock-com-1115804.jpg',
        ),
        PhotoWithDetails(
          houseName: 'House 1',
          housePrice: '224',
          houseImage: 'assets/images/pexels-fomstock-com-1115804.jpg',
        ),
      ],
    );
  }
}
