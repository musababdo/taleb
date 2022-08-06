
import 'package:flutter/material.dart';
import 'package:taleb/pages/profile/editprofile.dart';

class Profile extends StatefulWidget {
  static String id='profile';
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                              "My Account",
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
                    elevation: 8,
                    child: Container(
                        height: MediaQuery.of(context).size.height / 3.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                          ),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
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
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Notification",
                                          style: TextStyle(
                                              fontSize:20,
                                              color: Colors.black
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        Text("+966 54448429393",
                                          style: TextStyle(
                                              fontSize:16,
                                              color: Colors.black26
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 15),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.popAndPushNamed(context, EditProfile.id);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(5),
                                        bottomRight: Radius.circular(5),
                                        topRight: Radius.circular(5),
                                        topLeft: Radius.circular(5),
                                      ),
                                      border: Border.all(color: Colors.blueAccent)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.edit,color: Colors.blueAccent,),
                                        const SizedBox(width: 5),
                                        Text(
                                          "Edit Profile",
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.blueAccent
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                    ),
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
                  Row(
                    children: [
                      Text(
                        "Settings",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.circle,color: Colors.blueAccent,size: 18,),
                      const SizedBox(width: 8),
                      Text(
                        "My Children",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios,color: Colors.blueAccent,size: 12,),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Divider(
              color: Colors.black,
            ),
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.payment,color: Colors.blueAccent,size: 18,),
                      const SizedBox(width: 8),
                      Text(
                        "Payment Method",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios,color: Colors.blueAccent,size: 12,),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Divider(
              color: Colors.black,
            ),
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.circle,color: Colors.blueAccent,size: 18,),
                      const SizedBox(width: 8),
                      Text(
                        "Language",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "English",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.blueAccent
                        ),
                      ),
                      const SizedBox(width: 8),
                      Icon(Icons.arrow_forward_ios,color: Colors.blueAccent,size: 12,),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Divider(
              color: Colors.black,
            ),
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.circle,color: Colors.blueAccent,size: 18,),
                      const SizedBox(width: 8),
                      Text(
                        "About Us",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios,color: Colors.blueAccent,size: 12,),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Divider(
              color: Colors.black,
            ),
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.circle,color: Colors.blueAccent,size: 18,),
                      const SizedBox(width: 8),
                      Text(
                        "Terms and Condition",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios,color: Colors.blueAccent,size: 12,),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Divider(
              color: Colors.black,
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Icon(Icons.logout,color: Colors.redAccent,size: 18,),
                  const SizedBox(width: 8),
                  Text(
                    "Log Out",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.redAccent
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Divider(
              color: Colors.black,
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
