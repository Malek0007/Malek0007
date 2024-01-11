import 'package:flutter/material.dart';

import 'AboutUs.dart';
import 'OurMentors.dart';
import 'OurOffers.dart';
import 'Contact.dart';
import 'WelcomePage.dart';
import 'Projects.dart';

class Mentor {
  final String name;
  final String role;
  final int age;
  final String imagePath;

  Mentor({
    required this.name,
    required this.role,
    required this.age,
    required this.imagePath,
  });
}

class OurMentors extends StatefulWidget {
  const OurMentors({Key? key}) : super(key: key);

  @override
  _OurMentorsState createState() => _OurMentorsState();
}

class _OurMentorsState extends State<OurMentors> {
  List<Mentor> mentors = [
    Mentor(
        name: 'M Amir Abida',
        role: 'Network engineer',
        age: 37,
        imagePath: 'images/a.png'),
    Mentor(
        name: 'Mr Sami Kammoun',
        role: 'HR Manager',
        age: 45,
        imagePath: 'images/aa.png'),
    Mentor(
        name: 'M Amir Abida',
        role: 'Network engineer',
        age: 37,
        imagePath: 'images/a.png'),
    Mentor(
        name: 'Mr Sami Kammoun',
        role: 'HR Manager',
        age: 45,
        imagePath: 'images/aa.png'),

    // Add more mentors as needed
  ];

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
      body: ListView(
        children: [
          HomePage(),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 430,
          height: 1074,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Color(0xFFDEEBEA)),
          child: Stack(
            children: [
              Positioned(
                left: 30,
                top: 160,
                child: SizedBox(
                  width: 358,
                  height: 60,
                  child: Container(
                    decoration: BoxDecoration(
                      color:
                          Color(0xFF9FA9FF), // Set the background color to blue
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                            width:
                                10), // Adjust the spacing between icon and text as needed
                        Icon(
                          Icons.search,
                          color: Color(0xFF8D8D92),
                        ),
                        SizedBox(
                            width:
                                10), // Adjust the spacing between icon and text as needed
                        Expanded(
                          child: TextField(
                            style: TextStyle(
                              color: Color(0xFF8D8D92),
                              fontSize: 16,
                              fontFamily: 'Kalam',
                              fontWeight: FontWeight.w700,
                            ),
                            decoration: InputDecoration(
                              hintText:
                                  'Choose your field of study, your mentor...',
                              hintStyle: TextStyle(
                                color: Color(0xFF8D8D92),
                                fontSize: 16,
                                fontFamily: 'Kalam',
                                fontWeight: FontWeight.w700,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 450,
                child: Container(
                  width: 380,
                  height: 174,
                  decoration: ShapeDecoration(
                    color: Color(0xFF8490ED),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 651,
                child: Container(
                  width: 380,
                  height: 174,
                  decoration: ShapeDecoration(
                    color: Color(0xFFBEC5FA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 251,
                child: Container(
                  width: 380,
                  height: 172,
                  decoration: ShapeDecoration(
                    color: Color(0xFFBEC5FA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 29,
                top: 267,
                child: Container(
                  width: 134,
                  height: 141,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/image 1.png'),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 29,
                top: 663,
                child: Container(
                  width: 134,
                  height: 145,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/image 3.png'),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 29,
                top: 463,
                child: Container(
                  width: 134,
                  height: 145,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/image 2.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 50,
                top: 50,
                child: SizedBox(
                  width: 358,
                  height: 102,
                  child: Text(
                    'Mentor Mate',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF7A66F3),
                      fontSize: 50,
                      fontFamily: 'Kalam',
                      height: 1.5,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 182,
                top: 270,
                child: SizedBox(
                  width: 200,
                  height: 89,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'M Amir Abida ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'KoHo',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Network engineer',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'KoHo',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        '37 Y.O',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'KoHo',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 182,
                top: 485,
                child: SizedBox(
                  width: 200,
                  height: 89,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mr Sami Kammoun ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'KoHo',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'HR Manager',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'KoHo',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        '45 Y.O',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'KoHo',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 182,
                top: 695,
                child: SizedBox(
                  width: 200,
                  height: 89,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mr Amani Abichou ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'KoHo',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'HR Manager',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'KoHo',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        '43 Y.O',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'KoHo',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
