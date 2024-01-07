import 'package:flutter/material.dart';
import 'AboutUs.dart';


import 'LoginPage.dart';
import 'OurMentors.dart';


class WelcomePage extends StatelessWidget {
  const WelcomePage({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     backgroundColor: Color(0xFF7A67F3),
      //     title: Image.asset("images/logo_mentormate-removebg-preview.png",
      //         width: 80),
      //     titleSpacing: 10),
      appBar: AppBar(
        backgroundColor: Color(0xFF7A67F3),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "images/logo_mentormate-removebg-preview.png",
              width: 80,
            ),
            PopupMenuButton<String>(
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
                      width: 150,
                      height: 50,
                      decoration: ShapeDecoration(
                        color: Color(0xFFA2ADFF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
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
                // if (choice == 'Our mentors') {}
              },
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Mentor Mate',
            style: TextStyle(
              color: Color(0xFF7A66F3),
              fontSize: 65,
              fontFamily: 'Kalam',
              fontWeight: FontWeight.w700,
              height: 1.8,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            width: 287,
            height: 90,
            child: Text(
              'Choose a Mentor\nto become your Mate',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontFamily: 'Kaushan Script',
                fontWeight: FontWeight.w400,
                height: 1.4,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 560,
            height: 368,
            child: Image.asset("images/welcome_image.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 20.0), // Adjust top padding as needed
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF7A66F3), // Background color
              ),
              child: Text(
                'Get started',
                style: TextStyle(
                  color: Colors.white, // Text color
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
