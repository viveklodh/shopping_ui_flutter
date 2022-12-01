import 'package:flutter/material.dart';

void main() {
  runApp(ShoppingApp());
}

class ShoppingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            actions: [
              Icon(Icons.search, color: Colors.black),
              SizedBox(width: 10),
              Icon(Icons.heart_broken, color: Colors.black),
              SizedBox(width: 10),
              Icon(Icons.shopping_bag_outlined, color: Colors.black),
              SizedBox(width: 10),
            ],
            leading: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            backgroundColor: Colors.white,
            title: Text(
              "Solid Shirt Style",
              style: TextStyle(color: Colors.black),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Image.network(
                          "https://baazarkolkata.com/old(12.08.2020)/wp-content/uploads/2019/04/d5.jpg",
                          height: 400,
                        ),
                        Positioned(
                          right: -20,
                          top: 20,
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  spreadRadius: 1,
                                  blurRadius: 2)
                            ], color: Colors.white, shape: BoxShape.circle),
                            child: Icon(Icons.heart_broken),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Solid shirt Style TShirt",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(20)),
                    padding: EdgeInsets.all(5),
                    child: Text("Special Price",
                        style: TextStyle(color: Colors.red)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text("\$30",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      SizedBox(
                        width: 10,
                      ),
                      Text("\$60",
                          style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              fontSize: 18,
                              color: Colors.grey)),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Rs 50% off",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.red))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20)),
                          padding: EdgeInsets.all(5),
                          child: Row(
                            children: [
                              Text(
                                "4.3",
                                style: TextStyle(color: Colors.white),
                              ),
                              Icon(Icons.star, color: Colors.white, size: 14)
                            ],
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "2814 raatings",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    thickness: 3,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "SIZE",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.all(5),
                        child: Text("SIZE CHART",
                            style: TextStyle(color: Colors.red)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 50,
                          color: Colors.white,
                          child: Center(
                            child: Text(
                              "ADD TO BAG",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 50,
                          color: Colors.red,
                          child: Center(
                            child: Text(
                              "BUY NOW",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
