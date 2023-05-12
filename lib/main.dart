import 'package:flutter/material.dart';
import 'package:homeapp/pages/detailPage.dart';
import 'package:homeapp/sections/homeDetails.dart';
import 'package:homeapp/sections/photoWithDetails.dart';
import 'package:homeapp/sections/rowButton.dart';

import 'sections/bottomNavigation.dart';
import 'sections/containerButton.dart';
import 'sections/offerSection.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar:
            Container(color: Colors.white, child: BottomNavigation()),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
          elevation: 0,
          actions: [
            Container(
              margin: EdgeInsets.only(right: 10),
              height: 20,
              width: 40,
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text(
                      "M",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      "Shop",
                      style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 30,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ContainerButtton(text: 'Home', isSelected: true),
                  ContainerButtton(text: "Rent"),
                  ContainerButtton(text: "Sale"),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(30))),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RowButton(
                                text: 'Home',
                                isSelected: true,
                              ),
                              RowButton(text: "Window"),
                              RowButton(text: "Door"),
                              RowButton(text: "Door"),
                              RowButton(text: "Kitchen"),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          child: HomeDetails(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10)),
                          margin: EdgeInsets.only(left: 20),
                          height: 5,
                          width: 400,
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20)),
                                height: 5,
                                width: 80,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Offers",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              Text("View All"),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              OfferSection(
                                  houseName: "Home Decored Rented House",
                                  houseSmallName: "Alayan",
                                  houseImage:
                                      "assets/images/pexels-tomáš-malík-2581922.jpg",
                                  housePrice: "234"),
                              OfferSection(
                                  houseName: "Home Decored Rented House",
                                  houseSmallName: "Alayan",
                                  houseImage:
                                      "assets/images/pexels-scott-webb-1029599.jpg",
                                  housePrice: "234"),
                              OfferSection(
                                  houseName: "Home Decored Rented House",
                                  houseSmallName: "Alayan",
                                  houseImage:
                                      "assets/images/pexels-thgusstavo-santana-2102587.jpg",
                                  housePrice: "234"),
                              OfferSection(
                                  houseName: "Home Decored Rented House",
                                  houseSmallName: "Alayan",
                                  houseImage:
                                      'assets/images/pexels-fomstock-com-1115804.jpg',
                                  housePrice: "234"),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
