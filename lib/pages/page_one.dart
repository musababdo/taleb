
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:taleb/constants.dart';
import 'package:taleb/widgets/custom_buttons.dart';

class PageOne extends StatefulWidget {
  static String id='pageone';
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Taleb",
                            style: TextStyle(
                                fontSize: 20,
                                color:Colors.white,
                                fontWeight: FontWeight.bold
                            ),

                          ),
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 10,left: 10,top: 5,bottom: 5),
                                child: Row(
                                  children: [
                                    Icon(Icons.notifications,color: Colors.black),
                                    const SizedBox(width: 5),
                                    Text("Notification",
                                    style: TextStyle(
                                      fontSize:16,
                                      color: Colors.black
                                    ),),
                                  ],
                                ),
                              )
                          ),
                        ],
                      ),
                    ),
                  ),
                  buildSearchBar(),
                ],
              ),
            ),
            Container(
              height: 150.0,
              child: ClipRRect(
                child: Carousel(
                  dotIncreaseSize: 0.8,
                  dotSize: 8,
                  dotColor: Color(0xFFE4E5E5),
                  dotBgColor: Colors.transparent,
                  borderRadius: true,
                  boxFit: BoxFit.cover,
                  images: List.generate(
                    slideShowList.length,
                        (index) => Image.asset(slideShowList[index],
                      fit: BoxFit.cover,),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Category",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            GestureDetector(
              onTap: (){
                //Navigator.popAndPushNamed(context, Products.id);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 30,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: collectionList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CustomButton(
                        name: collectionList[index].name,
                      );
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Topic",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap:(){
                          //Navigator.pushNamed(context, Sell.id);
                        },
                        child: Container(
                          height: 150.0,
                          width: 150.0,
                          color: Colors.transparent,
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
                              child: new Center(
                                child: new Text("Mathematics",
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.white
                                    ),
                                  textAlign: TextAlign.center,),
                              )),
                        ),
                      ),
                      GestureDetector(
                        onTap:(){
                          //Navigator.pushNamed(context, Rent.id);
                        },
                        child: Container(
                          height: 150.0,
                          width: 150.0,
                          color: Colors.transparent,
                          child: Container(
                              decoration: BoxDecoration(
                                  color:Colors.black,
                                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
                              child: new Center(
                                child: new Text("Programming",
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.white
                                    ),
                                  textAlign: TextAlign.center,),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height:height* .02,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap:(){
                          //Navigator.pushNamed(context, Land.id);
                        },
                        child: Container(
                          height: 150.0,
                          width: 150.0,
                          color: Colors.transparent,
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
                              child: new Center(
                                child: new Text("Football",
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.white
                                  ),
                                  textAlign: TextAlign.center,),
                              )),
                        ),
                      ),
                      GestureDetector(
                        onTap:(){
                          //Navigator.pushNamed(context, Land.id);
                        },
                        child: Container(
                          height: 150.0,
                          width: 150.0,
                          color: Colors.transparent,
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
                              child: new Center(
                                child: new Text("Biology",
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.white
                                  ),
                                  textAlign: TextAlign.center,),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Academic Teacher",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(right: 5,left: 5),
              child: Container(
                height: height / 5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    ),
                    border: Border.all(color: Colors.black12)
                ),
                child: GestureDetector(
                  onTap:(){

                  },
                  child: Row(
                    //mainAxisAlignment:MainAxisAlignment.start ,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(10),
                          bottomLeft: const Radius.circular(10),
                        ),
                        child:Image.asset('assets/images/img1.jpg',
                        fit: BoxFit.contain,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5,top: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Almeera Khan",
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Icon(Icons.home,color: Colors.pink,),
                              ],
                            ),
                            const SizedBox(height: 5),
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
                                child: Row(
                                  children: [
                                    Icon(Icons.home,color: Colors.green,),
                                    const SizedBox(width: 5),
                                    Text(
                                      "Almeera Khan",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.green
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                Icon(Icons.home,color: Colors.black,),
                                const SizedBox(width: 15),
                                Text(
                                  "100 SAR",
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(right: 5,left: 5),
              child: Container(
                height: height / 5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    ),
                    border: Border.all(color: Colors.black12)
                ),
                child: GestureDetector(
                  onTap:(){

                  },
                  child: Row(
                    //mainAxisAlignment:MainAxisAlignment.start ,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(10),
                          bottomLeft: const Radius.circular(10),
                        ),
                        child:Image.asset('assets/images/img1.jpg',
                          fit: BoxFit.contain,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5,top: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Almeera Khan",
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Icon(Icons.home,color: Colors.pink,),
                              ],
                            ),
                            const SizedBox(height: 5),
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
                                child: Row(
                                  children: [
                                    Icon(Icons.home,color: Colors.green,),
                                    const SizedBox(width: 5),
                                    Text(
                                      "Almeera Khan",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.green
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                Icon(Icons.home,color: Colors.black,),
                                const SizedBox(width: 15),
                                Text(
                                  "100 SAR",
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Tutuorial",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(right: 5,left: 5),
              child: Container(
                height: height / 5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    ),
                    border: Border.all(color: Colors.black12)
                ),
                child: GestureDetector(
                  onTap:(){

                  },
                  child: Row(
                    //mainAxisAlignment:MainAxisAlignment.start ,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(10),
                          bottomLeft: const Radius.circular(10),
                        ),
                        child:Image.asset('assets/images/img1.jpg',
                          fit: BoxFit.contain,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5,top: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Almeera Khan",
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Icon(Icons.home,color: Colors.pink,),
                              ],
                            ),
                            const SizedBox(height: 5),
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
                                child: Row(
                                  children: [
                                    Icon(Icons.home,color: Colors.green,),
                                    const SizedBox(width: 5),
                                    Text(
                                      "Almeera Khan",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.green
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                Icon(Icons.home,color: Colors.black,),
                                const SizedBox(width: 15),
                                Text(
                                  "100 SAR",
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(right: 5,left: 5),
              child: Container(
                height: height / 5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    ),
                    border: Border.all(color: Colors.black12)
                ),
                child: GestureDetector(
                  onTap:(){

                  },
                  child: Row(
                    //mainAxisAlignment:MainAxisAlignment.start ,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(10),
                          bottomLeft: const Radius.circular(10),
                        ),
                        child:Image.asset('assets/images/img1.jpg',
                          fit: BoxFit.contain,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5,top: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Almeera Khan",
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Icon(Icons.home,color: Colors.pink,),
                              ],
                            ),
                            const SizedBox(height: 5),
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
                                child: Row(
                                  children: [
                                    Icon(Icons.home,color: Colors.green,),
                                    const SizedBox(width: 5),
                                    Text(
                                      "Almeera Khan",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.green
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                Icon(Icons.home,color: Colors.black,),
                                const SizedBox(width: 15),
                                Text(
                                  "100 SAR",
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Taleb Support",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(right: 10,left: 10),
              child: Image.asset('assets/images/img1.jpg'),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
buildSearchBar() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
    ),
    margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
    child: TextFormField(
      controller: new TextEditingController(),
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Color(0xFF98A0A6),
            size: 20,
          ),
          hintText: "What do you want learn today?",
          hintStyle: TextStyle(
              color:Color(0xFF98A0A6),
              fontSize: 16,
          ),
          contentPadding: const EdgeInsets.only(top: 15,right: 10),
          border: InputBorder.none,
          enabledBorder: InputBorder.none),
    ),
  );
}
