
import 'package:flutter/material.dart';

class Accepted extends StatefulWidget {
  static String id='accepted';
  const Accepted({Key? key}) : super(key: key);

  @override
  State<Accepted> createState() => _AcceptedState();
}

class _AcceptedState extends State<Accepted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 5,left: 5),
        child: Container(
          height: MediaQuery.of(context).size.height / 3.4,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
              ),
              border: Border.all(color: Colors.black12)
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Order #2222",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.black26
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "07 jul 2022",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.black26
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Divider(
                  color: Colors.black,
                ),
                const SizedBox(height: 8),
                Text(
                  "Arabic For Monday",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
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
          ),
        ),
      ),
    );
  }
}
