
import 'package:flutter/material.dart';
import 'package:taleb/pages/myorder/tabs/accepted.dart';
import 'package:taleb/pages/myorder/tabs/all.dart';
import 'package:taleb/pages/myorder/tabs/canceled.dart';
import 'package:taleb/pages/myorder/tabs/completed.dart';
import 'package:taleb/pages/myorder/tabs/waiting.dart';

class Myorder extends StatefulWidget {
  static String id='myorder';
  const Myorder({Key? key}) : super(key: key);

  @override
  State<Myorder> createState() => _MyorderState();
}

class _MyorderState extends State<Myorder> {

  int _tabBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DefaultTabController(
          length: 5,
          child: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false, // hides default back button
              flexibleSpace: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Colors.greenAccent,
                          Colors.lightBlueAccent,
                        ]),
                  )),
              centerTitle: true,
              title:Text(
                  "My Order"
              ),
              bottom: TabBar(
                indicatorColor: Colors.blue,
                onTap: (value) {
                  setState(() {
                    _tabBarIndex = value;
                  });
                },
                tabs: <Widget>[
                  Text(
                    'All',
                    style: TextStyle(
                        color:Colors.black,
                        fontSize: 8
                    ),
                  ),
                  Text(
                    'Accepted',
                    style: TextStyle(
                        color:Colors.black,
                        fontSize: 8
                    ),
                  ),
                  Text(
                    'Waiting',
                    style: TextStyle(
                        color:
                        Colors.black,
                        fontSize: 8
                    ),
                  ),
                  Text(
                    'Canceled',
                    style: TextStyle(
                        color:
                        Colors.black,
                        fontSize: 8
                    ),
                  ),
                  Text(
                    'Completed',
                    style: TextStyle(
                        color:
                        Colors.black,
                        fontSize: 8
                    ),
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                All(),
                Accepted(),
                Waiting(),
                Canceled(),
                Completed(),
              ],

            ),
          ),
        )
      ],
    );
  }
}
