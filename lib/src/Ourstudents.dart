import 'package:flutter/material.dart';

import 'AboutUs.dart';
import 'OurMentors.dart';
import 'OurOffers.dart';
import 'Contact.dart';
import 'WelcomePage.dart';
import 'Projects.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key});

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xFFBEC5FA),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(10),
              width: 200,
              height: 100, // Ajustez la largeur selon vos besoins
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    margin: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        "images/amir.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Mr Amir",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 494,
              height: 90,
              child: Text(
                'Students',
                textAlign: TextAlign.center, //
                style: TextStyle(
                  color: Color(0xFF7A66F3),
                  fontSize: 45,
                  fontFamily: 'Kalam',
                  fontWeight: FontWeight.w900,
                  height: 1.8,
                ),
              ),
            ),
            Container(
              width: 340,
              height: 50,
              decoration: ShapeDecoration(
                color: Color(0xFFBEC5FA),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search a student',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            buildStudentContainer(
              "images/abida.png",
              "Mme ABIDA Malek",
              "Student at Supcom",
            ),
            SizedBox(height: 10),
            buildStudentContainer(
              "images/islem.png",
              "Mme CHAARI Islem",
              "Student at Enit",
            ),
            SizedBox(height: 10),
            buildStudentContainer(
              "images/seif.png",
              "Mr ABICHOU Seif",
              "Student at Enit",
            ),
            SizedBox(height: 10),
            buildStudentContainer(
              "images/fatma.png",
              "Mme Zaghouani Fatma",
              "Student at Ensi",
            ),
            SizedBox(height: 10),
            buildStudentContainer(
              "images/kamoun.png",
              "Mme Souha Ben Ghali",
              "Student at Enit",
            ),
          ],
        ),
      ),
    );
  }

  Widget buildStudentContainer(
    String image,
    String name,
    String info,
  ) {
    return Container(
      width: 340,
      height: 120,
      decoration: ShapeDecoration(
        color: Color(0xFFBEC5FA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Row(
        children: [
          Image.asset(image, width: 100),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'KoHo',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                info,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'KoHo',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
