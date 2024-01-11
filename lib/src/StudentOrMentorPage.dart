import 'package:flutter/material.dart';

import 'AboutUs.dart';
import 'OurMentors.dart';
import 'OurOffers.dart';
import 'Contact.dart';
import 'WelcomePage.dart';
import 'Projects.dart';

import 'MentorSignUpPage.dart';
import 'StudentSignUpPage.dart';
import 'OurMentors.dart';

class StudentOrMentorPage extends StatelessWidget {
  const StudentOrMentorPage({
    super.key,
  });

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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Transform.translate(
            offset: Offset(0.0, -50.0), // Adjust the offset to move higher
            child: SizedBox(
              width: 494,
              height: 90,
              child: Center(
                child: Text(
                  'Mentor Mate',
                  style: TextStyle(
                    color: Color(0xFF7A66F3),
                    fontSize: 65,
                    fontFamily: 'Kalam',
                    fontWeight: FontWeight.w700,
                    height: 1.8,
                  ),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, -50.0), // Adjust the offset to move higher
            child: SizedBox(
              width: 287,
              height: 90,
              child: Center(
                child: Text(
                  'Choose a Mentor\nto become your Mate',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontFamily: 'Kaushan Script',
                    fontWeight: FontWeight.w400,
                    height: 1.2,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 494,
            height: 90,
            child: Center(
              child: Text(
                'Are you ?',
                style: TextStyle(
                  color: Color(0xFF7A66F3),
                  fontSize: 65,
                  fontFamily: 'Kalam',
                  fontWeight: FontWeight.w700,
                  height: 1.8,
                ),
              ),
            ),
          ),
          Container(
            height: 80,
          ),
          Container(
            width: 200,
            height: 80,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MentorSignUpPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF7A66F3), // Background color
              ),
              child: Row(
                children: [
                  Image.asset("images/mentor.png",
                      width: 50,
                      height: 50), // Adjust width and height accordingly
                  Text(
                    'A mentor',
                    style: TextStyle(
                      color: Colors.white, // Text color
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 20,
          ),
          Container(
            width: 200,
            height: 80,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StudentSignUpPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF7A66F3), // Background color
              ),
              child: Row(
                children: [
                  Image.asset("images/student.png",
                      width: 50,
                      height: 50), // Adjust width and height accordingly
                  Text(
                    'A student',
                    style: TextStyle(
                      color: Colors.white, // Text color
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
