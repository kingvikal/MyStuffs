import 'package:demo/screens/homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  Widget tabBuilder(IconData icon, String text) {
    return Tab(
      icon: Icon(
        icon,
        size: 23,
      ),
      child: FittedBox(
        child: Text(
          text,
          style: const TextStyle(
              fontSize: 8,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child: SafeArea(
          child: Scaffold(
            bottomNavigationBar: Container(
              height: 70,
              color: Colors.white,
              child: TabBar(
                indicatorColor: Colors.transparent,
                labelStyle: const TextStyle(
                  fontSize: 11,
                ),
                labelColor: Colors.green,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  tabBuilder(Icons.home, 'Home'),
                  tabBuilder(Icons.explore, 'Explore'),
                  tabBuilder(Icons.notification_add, 'Notification'),
                  tabBuilder(Icons.shopping_cart, 'My Cart'),
                  tabBuilder(Icons.person, 'My Stuffs'),
                ],
              ),
            ),
            backgroundColor: const Color(0xffF8F6F8),
            body: TabBarView(
              children: [
                Container(),
                Container(),
                Container(),
                Container(),
                const HomeScreen(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
