import 'package:flutter/material.dart';

import 'AboutUs.dart';
import 'OurMentors.dart';
import 'OurOffers.dart';
import 'Contact.dart';
import 'WelcomePage.dart';
import 'Projects.dart';

import 'OurMentors.dart';

class Contact extends StatelessWidget {
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
      body: Column(
        children: [
          Container(
            width: 430,
            height: 932,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(color: Color(0xFFDEEBEA)),
            child: Stack(
              children: [
                Positioned(
                  left: 123,
                  top: 50,
                  child: SizedBox(
                    width: 300,
                    height: 49,
                    child: Text(
                      'Contact',
                      style: TextStyle(
                        color: Color(0xFF7A67F3),
                        fontSize: 40,
                        fontFamily: 'Kalam',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 45,
                  top: 400,
                  child: Container(
                    width: 340,
                    height: 311,
                    decoration: ShapeDecoration(
                      color: Color(0xFFBEC5FA),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 73,
                  top: 100,
                  child: Container(
                    width: 255,
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/contact.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                //
                Positioned(
                  left: 73,
                  top: 420,
                  child: SizedBox(
                    width: 293,
                    height: 175,
                    child: Text(
                      'Email:  help@mentormate.com\n\nPhone number: +216 95 848 849\n                  +216 22 356 665\n\nOur social media \n\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                        fontFamily: 'Kalam',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 186,
                  top: 630,
                  child: Container(
                    width: 57,
                    height: 57,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/insta-logo.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 290,
                  top: 630,
                  child: Container(
                    width: 57,
                    height: 57,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/fb-logo.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 90,
                  top: 630,
                  child: Container(
                    width: 57,
                    height: 57,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/fb-logo.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                //
              ],
            ),
          ),
        ],
      ),
    );
  }
}
