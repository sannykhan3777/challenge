import 'package:challenge/main.dart';
import 'package:flutter/material.dart';

class CompanyBottomNavBarScreen extends StatelessWidget {
  const CompanyBottomNavBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(

      body: SafeArea(
        bottom: false,
        child: NavBody()!,
      ),
      bottomNavigationBar: Container(
        height: 40,
        child: BottomAppBar(
            color: Colors.white,
            notchMargin: 1.0,
            shape: CircularNotchedRectangle(),
            elevation: 30.0,
            child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                      icon: Icon(
                        Icons.home,
                        size: 24.0,
                      ),),

                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.home,
                      size: 24.0,
                    ),),

                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.home,
                      size: 24.0,
                    ),),

                ])),
      ),
    );
  }
}

Widget? NavBody() {
  switch (0) {
    case 0:
      return MyHomePage();
    case 1:
      return Container(
        child: Text("Notifications"),
      );
    case 2:
      return Container(
        child: Text("Messages"),
      );
    case 3:
      return Container(
        child: Text("Profile"),
      );
  }
}
