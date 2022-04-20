import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:food_app/widget/single_widget1.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade400,
        drawer: Drawer(),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.orangeAccent,
          title: Text(
            "Home",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            CircleAvatar(
              radius: 15,
              backgroundColor: Colors.grey.shade400,
              child: Icon(Icons.search, color: Colors.black),
            ),
            SizedBox(
              width: 5,
            ),
            CircleAvatar(
              radius: 15,
              backgroundColor: Colors.grey.shade400,
              child: Icon(Icons.shop, color: Colors.black),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: ListView(
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://image.shutterstock.com/image-photo/autumn-vegetables-fruits-on-black-260nw-1544804957.jpg")),
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 320, bottom: 10),
                                child: Container(
                                  height: 35,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.amberAccent.shade700,
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(30),
                                          bottomLeft: Radius.circular(30))),
                                  child: Center(
                                    child: Text(
                                      "Vegi",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          shadows: [
                                            BoxShadow(
                                                color: Colors.green,
                                                blurRadius: 10,
                                                offset: Offset(3, 3))
                                          ]),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 220),
                                child: Text(
                                  "30% off",
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green[100]),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 130),
                                child: Text(
                                  "On all vegetable products",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        )),
                    // Expanded(
                    //     child: Container(
                    //
                    //     )
                    // )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Herbs Vegetables",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "View all",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SingleWidget(),
                    SingleWidget(),
                    SingleWidget(),
                    SingleWidget(),
                    SingleWidget(),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Fresh Fruits",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "View all",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SingleWidget(),
                    SingleWidget(),
                    SingleWidget(),
                    SingleWidget(),
                    SingleWidget(),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
