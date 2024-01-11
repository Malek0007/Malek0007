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
                'Telecommunication',
                style: TextStyle(
                  color: Color(0xFF7A66F3),
                  fontSize: 45,
                  fontFamily: 'Kalam',
                  fontWeight: FontWeight.w700,
                  height: 1.8,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
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
                  Image.asset("images/seif.png", width: 100),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Mr ABICHOU Seif",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'KoHo',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Specialty: Telecommunication",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "Experience: 5 years",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Month 1',
              style: TextStyle(
                color: Color(0xFFBFBBD8),
                fontSize: 30,
                fontFamily: 'Kalam',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            // Ajout des boutons pour chaque semaine (Month 1)
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  width: 340,
                  height: 120,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: ShapeDecoration(
                    color:
                        index % 2 == 0 ? Color(0xFFBFC5FA) : Color(0xFFA3ADFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      print('Naviguer vers la semaine ${index + 1} du mois 1');
                    },
                    child: Text(
                      'Week ${index + 1}',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: index % 2 == 0
                          ? Color(0xFFBFC5FA)
                          : Color(0xFFA3ADFF),
                      textStyle: TextStyle(fontSize: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Month 2',
              style: TextStyle(
                color: Color(0xFFBFBBD8),
                fontSize: 30,
                fontFamily: 'Kalam',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            // Ajout des boutons pour chaque semaine (Month 2)
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  width: 340,
                  height: 120,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: ShapeDecoration(
                    color:
                        index % 2 == 0 ? Color(0xFFBFC5FA) : Color(0xFFA3ADFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      print('Naviguer vers la semaine ${index + 1} du mois 2');
                    },
                    child: Text(
                      'Week ${index + 1}',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: index % 2 == 0
                          ? Color(0xFFBFC5FA)
                          : Color(0xFFA3ADFF),
                      textStyle: TextStyle(fontSize: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
