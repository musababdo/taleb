
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:taleb/pages/profile/profile.dart';

class EditProfile extends StatefulWidget {
  static String id='editprofile';
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    var id;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Edit Profile',
            style: TextStyle(
                color: Colors.black
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.popAndPushNamed(context, Profile.id);
            //Navigator.push(context, MaterialPageRoute(builder: (context) => home(),),);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: WillPopScope(
        onWillPop:(){
          Navigator.popAndPushNamed(context, Profile.id);
          //Navigator.pop(context);
          return Future.value(false);
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
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
                                height: 80,
                                width: 80,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Text("Change Photo",
                        style: TextStyle(
                            fontSize:18,
                            color: Colors.blueAccent,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Text("Your Name (English)",
                  style: TextStyle(
                      fontSize:16,
                      color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: TextField(
                    decoration: new InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Text("Your Name (Arabic)",
                  style: TextStyle(
                    fontSize:16,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: TextField(
                    decoration: new InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Text("Phone Number",
                  style: TextStyle(
                    fontSize:16,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: TextField(
                    decoration: new InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                        hintText: '+699 xxxxxxxx'
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Text("Gender",
                  style: TextStyle(
                    fontSize:16,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                          ),
                            border: Border.all(color: Colors.blueAccent)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child:Row(
                            children: [
                              Radio(
                                value: "male",
                                groupValue: id,
                                onChanged: (val) {

                                },
                              ),
                              Text("Male"),
                            ],
                          ),
                        )
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                            ),
                            border: Border.all(color: Colors.blueAccent)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child:Row(
                            children: [
                              Radio(
                                value: "female",
                                groupValue: id,
                                onChanged: (val) {

                                },
                              ),
                              Text("Female"),
                            ],
                          ),
                        )
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Text("Address",
                  style: TextStyle(
                    fontSize:16,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: TextField(
                    decoration: new InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12),
                        ),
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
                            color: Colors.blue,
                            borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(13),
                              topRight: const Radius.circular(13),
                              bottomLeft: const Radius.circular(13),
                              bottomRight: const Radius.circular(13),
                            )
                        ),
                        child: Text(
                          "Save",
                          style: TextStyle(color: Colors.white,fontSize: 25 ,fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
