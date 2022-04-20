import 'package:flutter/material.dart';

Widget SingleWidget(){

return Container(
  margin: EdgeInsets.symmetric(horizontal: 5),
  height: 250,
  width: 160,
  decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10)),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(
        flex: 2,
        child: Image.network(
            "https://purepng.com/public/uploads/large/purepng.com-spinachvegetables-green-spinach-941524712351zszxc.png"),
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Fresh spinach",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text("50tk/ 1 kg",
                  style: TextStyle(
                    color: Colors.grey,
                  )),
              Row(
                children: [
                  Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 5),
                        height: 30,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(10),
                            border:
                            Border.all(color: Colors.grey)),
                        child: Row(
                          children: [
                            Text(
                              "50 tk/1kg",
                              style: TextStyle(fontSize: 8,fontWeight: FontWeight.bold),
                            ),
                            Center(
                                child: Icon(
                                  Icons.arrow_drop_down,
                                  size: 25,
                                  color: Colors.orange,
                                ))
                          ],
                        ),
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                      height: 30,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(8),
                          border:
                          Border.all(color: Colors.grey)),
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          Icon(Icons.remove,color: Colors.orange,size: 15,),
                          Text("1",style:TextStyle(color: Colors.orange)),
                          Icon(Icons.add,color: Colors.orange,size: 15,)
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      )
    ],
  ),
);
}