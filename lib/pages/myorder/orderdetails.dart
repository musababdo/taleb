
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:taleb/pages/myorder/myorder.dart';

class OrderDetails extends StatefulWidget {
  static String id='orderdetails';
  const OrderDetails({Key? key}) : super(key: key);

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop:(){
          Navigator.popAndPushNamed(context, Myorder.id);
          //Navigator.pop(context);
          return Future.value(false);
        },
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 170,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.greenAccent,
                          Colors.lightBlueAccent,
                        ],
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 20, right: 20, top: 45),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:  Center(
                              child: Text(
                                "Order #12222",
                                style: TextStyle(
                                    fontSize: 20,
                                    color:Colors.white,
                                    fontWeight: FontWeight.bold
                                ),

                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,top:90),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: Container(
                          height: MediaQuery.of(context).size.height / 2.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12),
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                            ),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top: 15),
                                            child: ClipOval(
                                              child: Material(
                                                child: GestureDetector(
                                                  onTap: (){

                                                  },
                                                  child: SizedBox(
                                                    child: Image.asset('assets/images/img1.jpg'),
                                                    height: 60,
                                                    width: 60,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 15),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 15),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Your teacher",
                                                  style: TextStyle(
                                                      fontSize:15,
                                                      color: Colors.black26
                                                  ),
                                                ),
                                                const SizedBox(height: 10),
                                                Text("Almera Khat",
                                                  style: TextStyle(
                                                      fontSize:18,
                                                      color: Colors.black
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(5),
                                              bottomRight: Radius.circular(5),
                                              topLeft: Radius.circular(5),
                                              topRight: Radius.circular(5),
                                            ),
                                            color: Colors.greenAccent,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: Icon(Icons.call,color: Colors.white,
                                            ),
                                          )
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Divider(
                                  color: Colors.black,
                                ),
                                const SizedBox(height: 8),
                                Text("2 Reamining Session",
                                  style: TextStyle(
                                      fontSize:18,
                                      color: Colors.blueAccent
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text("Arabic for Monday",
                                  style: TextStyle(
                                      fontSize:18,
                                      color: Colors.black
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    Icon(Icons.home,color: Colors.green,),
                                    const SizedBox(width: 5),
                                    Text(
                                      "3 Session",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(5),
                                        bottomRight: Radius.circular(5),
                                        topRight: Radius.circular(5),
                                        topLeft: Radius.circular(5),
                                      ),
                                      border: Border.all(color: Colors.green)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Text(
                                      "Order Accepted",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.green
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text("Session",
                  style: TextStyle(
                      fontSize:18,
                      color: Colors.black
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Container(
                    height: MediaQuery.of(context).size.height / 3.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                    "Now Session in progress",
                                  style: TextStyle(
                                    color: Colors.black26,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(5),
                                          bottomRight: Radius.circular(5),
                                          topLeft: Radius.circular(5),
                                          topRight: Radius.circular(5),
                                        ),
                                        color: Colors.redAccent,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Text(
                                            "01:48:59",
                                           style: TextStyle(color: Colors.white),
                                        ),
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(Icons.date_range,color: Colors.green),
                              const SizedBox(width: 5),
                              Text(
                                "Sunday,12 july 2022",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(Icons.circle,color: Colors.green),
                              const SizedBox(width: 5),
                              Text(
                                "5-7 PM (1 Hour)",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(Icons.markunread_sharp,color: Colors.green),
                              const SizedBox(width: 5),
                              Text(
                                "in Person",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Container(
                    height: MediaQuery.of(context).size.height / 9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      color: Colors.black12,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Season History",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios,color: Colors.blueAccent,size: 10,),
                        ],
                      ),
                    ),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text("Invoice",
                  style: TextStyle(
                      fontSize:18,
                      color: Colors.black
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Container(
                    height: MediaQuery.of(context).size.height / 4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Invoice Order #12221",
                                  style: TextStyle(
                                    color: Colors.black26,
                                  ),
                                ),
                                Text(
                                  "07 july 2022",
                                  style: TextStyle(
                                    color: Colors.black26,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Arabic for Monday",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black
                            ),
                          ),
                          const SizedBox(height: 8),
                          Divider(
                            color: Colors.black,
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Order Status",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black
                                ),
                              ),
                              const SizedBox(width: 5),
                              Text(
                                "Paid",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.blueAccent
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Divider(
                            color: Colors.black,
                          ),
                        ],
                      ),
                    )
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text("Cancel Order",
                  style: TextStyle(
                      fontSize:18,
                      color: Colors.black
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text("SessionSessionSessionSessionSessionSession"
                            "SessionSessionSessionSessionSessionSession",
                  style: TextStyle(
                      fontSize:14,
                      color: Colors.black12
                  ),
                ),
              ),
              const SizedBox(height: 15),
              InkWell(
                onTap: (){
                  //Navigator.pushNamed(context, Home.id);
                },
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: Platform.isIOS ? 70 : 60,
                    alignment: Alignment.center,
                    decoration: new BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(13),
                          topRight: const Radius.circular(13),
                          bottomLeft: const Radius.circular(13),
                          bottomRight: const Radius.circular(13),
                        )
                    ),
                    child: Text(
                      "Cancel Order",
                      style: TextStyle(color: Colors.white,fontSize: 22 ,fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
