import 'package:flutter/material.dart';

import 'AboutUs.dart';
import 'OurMentors.dart';
import 'OurOffers.dart';
import 'Contact.dart';
import 'WelcomePage.dart';
import 'Projects.dart';

import 'OurMentors.dart';
import 'Contact.dart';
import 'AboutUs.dart';
import 'Payment.dart';

class OurOffers extends StatefulWidget {
  const OurOffers({super.key});

  @override
  State<OurOffers> createState() => _OurOffersState();
}

class _OurOffersState extends State<OurOffers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF7A67F3),
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: SizedBox(
                width: 150,
                child: Image.asset(
                  "images/logo_mentormate-removebg-preview.png",
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
        actions: [
          PopupMenuButton<String>(
            color: Colors.transparent,
            padding: EdgeInsets.zero,
            icon: Icon(
              Icons.dehaze_rounded,
              color: Colors.white,
            ),
            itemBuilder: (BuildContext context) {
              return [
                'Home',
                'Our mentors',
                'Projects',
                'Our offers',
                'About us',
                'Contact',
              ].map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Container(
                    width: 200,
                    height: 50,
                    color: Color(0xFFA2ADFF),
                    child: Center(
                      child: Text(
                        choice,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                );
              }).toList();
            },
            onSelected: (String choice) {
              // Handle menu item selection
              if (choice == 'Home') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WelcomePage()),
                );
              }
              if (choice == 'Our mentors') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OurMentors()),
                );
              }
              if (choice == 'About us') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutUs()),
                );
              }
              if (choice == 'Our offers') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OurOffers()),
                );
              }
              if (choice == 'Contact') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Contact()),
                );
              }
              if (choice == 'Projects') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Projects()),
                );
              }
            },
          ),
        ],
      ),
      // drawer: Drawer(
      //   backgroundColor: Color(0xFFBFC5FA),
      //   width: 200,
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: <Widget>[
      //       Container(
      //         height: 90, // Set the height for the DrawerHeader
      //         child: DrawerHeader(
      //           decoration: BoxDecoration(
      //             color: Color(0xFF7A67F3),
      //           ),
      //           child: Text(
      //             'Menu',
      //             style: TextStyle(
      //               color: Colors.white,
      //               fontSize: 18,
      //             ),
      //           ),
      //         ),
      //       ),
      //       ListTile(
      //         title: Text(
      //           'Telecommunication',
      //           style: TextStyle(fontSize: 18),
      //         ),
      //         onTap: () {
      //           // Handle the tap on the Home item
      //           Navigator.pop(context); // Close the drawer
      //         },
      //       ),
      //       ExpansionTile(
      //         initiallyExpanded: true,
      //         title: Text('COURSES'),
      //         children: <Widget>[
      //           ListTile(
      //             title: Text('Week 1'),
      //             onTap: () {
      //               // Handle the tap on Category 1
      //               Navigator.pop(context); // Close the drawer
      //             },
      //           ),
      //           ListTile(
      //             title: Text('Week 2'),
      //             onTap: () {
      //               // Handle the tap on Category 2
      //               Navigator.pop(context); // Close the drawer
      //             },
      //           ),
      //           ListTile(
      //             title: Text('Week 3'),
      //             onTap: () {
      //               // Handle the tap on Category 2
      //               Navigator.pop(context); // Close the drawer
      //             },
      //           ),
      //           ListTile(
      //             title: Text('Week 4'),
      //             onTap: () {
      //               // Handle the tap on Category 2
      //               Navigator.pop(context); // Close the drawer
      //             },
      //           ),
      //         ],
      //       ),
      //       ListTile(
      //         title: Text(
      //           'Notes',
      //           style: TextStyle(fontSize: 18),
      //         ),
      //         onTap: () {
      //           // Handle the tap on the Settings item
      //           Navigator.pop(context); // Close the drawer
      //         },
      //       ),
      //       ListTile(
      //         title: Text(
      //           'Projects',
      //           style: TextStyle(fontSize: 18),
      //         ),
      //         onTap: () {
      //           // Handle the tap on the Settings item
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (context) => ProjectPage()),
      //           ); // Close the drawer
      //         },
      //       ),
      //       ListTile(
      //         title: Text(
      //           'Messages',
      //           style: TextStyle(fontSize: 18),
      //         ),
      //         onTap: () {
      //           // Handle the tap on the Settings item
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (context) => MessagePage()),
      //           ); // Close the drawer
      //         },
      //       ),
      //     ],
      //   ),
      // ),

      // //Body
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Our offers',
                  style: TextStyle(
                    color: Color(0xFF9F8FFF),
                    fontSize: 45.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Kalam',
                  ),
                ),
              ],
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'images/silver.png',
                  width: 340,
                  height: 350,
                ),
                Positioned(
                  top: 30,
                  child: Text(
                    'Silver offer \n  Monthly \n    49.9 DT',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontFamily: 'Kalam',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 230,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Payment()),
                      );
                    },
                    child: Text('Pay'),
                  ),
                ),
              ],
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'images/gold.png',
                  width: 340,
                  height: 350,
                ),
                Positioned(
                  top: 50,
                  child: Text(
                    'Golden offer \n  Annual \n    499.9 DT',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 55,
                      fontFamily: 'Kalam',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 230,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Payment()),
                      );
                    },
                    child: Text('Pay'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
