import 'package:challenge/bottom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:  CompanyBottomNavBarScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        leading: Container(),
        title: Center(
          child: Image.asset(
            "assets/meetup.png",
            width: 110.0,
            fit: BoxFit.fitWidth,
          ),
        ),
        actions: [
          CircleAvatar(
            child: Image.asset("assets/girl.png"),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 2.0),
          child: Column(
            children: [
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Text(
                    "Your Next Event",
                    style:
                        TextStyle(fontWeight: FontWeight.w800, fontSize: 28.0),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 12.0),
                height: height * 0.3,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Sat, FEB 19 ♦ 12:00 PM",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.orangeAccent,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12.0,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Flutter Festival,",
                                  style: TextStyle(
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.w900),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Islamabad",
                                  style: TextStyle(
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.w900),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12.0,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Flutter Islamabad",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12.0,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.check_circle_rounded,
                                  size: 25.0,
                                  color: Colors.green,
                                ),
                                Text(
                                  "93 Ongoing.",
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey),
                                ),
                                Icon(
                                  Icons.videocam,
                                  size: 18.0,
                                  color: Colors.grey,
                                ),
                                Text(
                                  "Online Event",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            // SizedBox(
                            //   width: width * 0.2,
                            //   child: Image.asset("assets/fl.png"),
                            // ),
                            Icon(
                              Icons.share_outlined,
                              size: 20.0,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Your Groups",
                    style:
                    TextStyle(fontWeight: FontWeight.w800, fontSize: 28.0),
                  ),

                  Text(
                    "See all",
                    style:
                    TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0 , color: Colors.green),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProfileCardConnections(),
                  ProfileCardConnections(),
                  ProfileCardConnections(),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}


class ProfileCardConnections extends StatelessWidget {
  const ProfileCardConnections({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: Container(
        width: width * 0.3 ,
        height: height * 0.2,

        color: Colors.grey,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
              child: Stack(
                children: [
                  Image.asset("assets/fastt.png" , fit: BoxFit.cover,),
                  Positioned(
                    bottom: 10.0,
                    child: Text(
                      "Flutter Isb",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
