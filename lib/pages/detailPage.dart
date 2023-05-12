import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String title;
  final String image;
  final String price;
  const DetailPage(
      {Key? key, required this.title, required this.image, required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget thickness = Divider(
      color: Colors.grey.shade300,
      thickness: 1,
    );
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            image,
            height: MediaQuery.of(context).size.height * .6,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          IconButton(
              padding: EdgeInsets.only(left: 10, top: 40),
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.cancel)),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.55,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  title,
                                  style: TextStyle(fontSize: 23),
                                ),
                                Text(
                                  "\$" + price,
                                  style: TextStyle(fontSize: 18),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 23),
                            child: Row(
                              children: [
                                Text(
                                  "Size",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey.shade500),
                                ),
                                SizedBox(
                                  width: 100,
                                ),
                                Text(
                                  "Qty",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey.shade500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 22, top: 5),
                            child: Row(
                              children: [
                                Text(
                                  "16 OZ",
                                  style: TextStyle(
                                      fontSize: 19, color: Colors.black),
                                ),
                                SizedBox(
                                  width: 81,
                                ),
                                Text(
                                  "1",
                                  style: TextStyle(
                                    fontSize: 19,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          thickness,
                          ListTile(
                            title: Text("Details"),
                            trailing: Icon(Icons.add),
                          ),
                          thickness,
                          ListTile(
                            title: Text("Shopping"),
                            trailing: Icon(Icons.add),
                          ),
                          thickness,
                          ListTile(
                            title: Text("Returns"),
                            trailing: Icon(Icons.add),
                          ),
                          thickness,
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite_border,
                              ),
                            ),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey)),
                          ),
                          TextButton.icon(
                            onPressed: () {},
                            icon:
                                Icon(Icons.shopping_cart, color: Colors.white),
                            label: Text("Add to cart",
                                style: TextStyle(color: Colors.white)),
                            style: ButtonStyle(
                                padding: MaterialStatePropertyAll(
                                    EdgeInsets.symmetric(horizontal: 55)),
                                shape:
                                    MaterialStatePropertyAll(StadiumBorder()),
                                backgroundColor: MaterialStatePropertyAll(
                                    Colors.pink.shade200)),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
