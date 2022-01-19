import 'package:flutter/material.dart';

import '../ProfileData.dart';
import '../assets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 33,
                backgroundColor: Colors.green,
                child: CircleAvatar(
                  backgroundImage: AssetImage(bikalImage),
                  radius: 30,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Hi, I\'m ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        Text(
                          'Bikal',
                          style: TextStyle(
                            color: Color(0xff68A037),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text("Joined in August 2021"),
                  ],
                ),
              ),
            ],
          ),
          const Divider(
            height: 50,
            thickness: 1,
          ),
          const Text(
            "My Profile.",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            color: const Color(0xffFFFFFF),
            child: Column(
              children: const [
                ProfileData(
                  string: "My Personal Information",
                  showDivider: true,
                  sizedBox: true,
                ),
                ProfileData(
                  string: "My Payment Cards",
                  showDivider: true,
                  sizedBox: true,
                ),
                ProfileData(
                  string: "My Locations",
                  showDivider: true,
                  sizedBox: true,
                ),
                ProfileData(
                  string: "My Orders",
                  showDivider: false,
                  sizedBox: false,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Exclusive Dokodeals.",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            color: const Color(0xffFFFFFF),
            child: Column(
              children: const [
                ProfileData(
                  string: "Favourite Products",
                  showDivider: true,
                  sizedBox: true,
                ),
                ProfileData(
                  string: "Favourite Sellers",
                  showDivider: true,
                  sizedBox: true,
                ),
                ProfileData(
                  string: "Become Affiliator",
                  showDivider: true,
                  sizedBox: true,
                ),
                ProfileData(
                  string: "Become a vendor",
                  showDivider: false,
                  sizedBox: false,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Supports.",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            color: const Color(0xffFFFFFF),
            child: Column(
              children: const [
                ProfileData(
                  string: "Terms & Conditions",
                  showDivider: true,
                  sizedBox: true,
                ),
                ProfileData(
                  string: "Customer Support",
                  showDivider: true,
                  sizedBox: true,
                ),
                ProfileData(
                  string: "About Dokodeals",
                  showDivider: false,
                  sizedBox: false,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 60,
            color: Colors.white,
            padding: const EdgeInsets.all(8),
            child: Row(
              children: const [
                Icon(
                  Icons.logout,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Sign Out',
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
