import 'package:flutter/material.dart';

import 'AboutUs.dart';
import 'OurMentors.dart';
import 'OurOffers.dart';
import 'Contact.dart';
import 'WelcomePage.dart';
import 'Projects.dart';
import 'Notes.dart';
import 'MessagePage.dart';
import 'CalendarPage.dart';
import 'weekone.dart';

class weekone extends StatelessWidget {
  const weekone({Key? key});

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
      drawer: Drawer(
        backgroundColor: Color(0xFFBFC5FA),
        width: 200,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 90, // Set the height for the DrawerHeader
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFF7A67F3),
                ),
                child: Text(
                  'Menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Telecommunication',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                // Handle the tap on the Home item
                Navigator.pop(context); // Close the drawer
              },
            ),
            ExpansionTile(
              initiallyExpanded: true,
              title: Text('COURSES'),
              children: <Widget>[
                ListTile(
                  title: Text('Week 1'),
                  onTap: () {
                    // Handle the tap on Category 1
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => weekone()),
                    ); // Close the drawer
                  },
                ),
                ListTile(
                  title: Text('Week 2'),
                  onTap: () {
                    // Handle the tap on Category 2
                    Navigator.pop(context); // Close the drawer
                  },
                ),
                ListTile(
                  title: Text('Week 3'),
                  onTap: () {
                    // Handle the tap on Category 2
                    Navigator.pop(context); // Close the drawer
                  },
                ),
                ListTile(
                  title: Text('Week 4'),
                  onTap: () {
                    // Handle the tap on Category 2
                    Navigator.pop(context); // Close the drawer
                  },
                ),
              ],
            ),
            ListTile(
              title: Text(
                'Notes',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                // Handle the tap on the Settings item
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Notes()),
                ); // Close the drawer
              },
            ),
            ListTile(
              title: Text(
                'Projects',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                // Handle the tap on the Settings item
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Projects()),
                ); // Close the drawer
              },
            ),
            ListTile(
              title: Text(
                'Messages',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                // Handle the tap on the Settings item
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MessagePage()),
                ); // Close the drawer
              },
            ),
            ListTile(
              title: Text(
                'Calendar',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                // Handle the tap on the Settings item
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CalendarPage()),
                ); // Close the drawer
              },
            ),
          ],
        ),
      ),
      //   //bo
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Section "Mr Amir"
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
                      child: Image.asset(
                        "images/kamoun.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Islem kammoun",
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

            SizedBox(height: 10),

            // Section "Telecommunication"
            Text(
              'Telecommunication',
              style: TextStyle(
                color: Color(0xFF7A66F3),
                fontSize: 40,
                fontFamily: 'Kalam',
                fontWeight: FontWeight.w900,
                height: 1.8,
              ),
            ),

            // Section "My Mentor"
            Text(
              'My Mentor',
              style: TextStyle(
                color: Color(0xFFBFBBD8),
                fontSize: 30,
                fontFamily: 'Kalam',
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 20),

            // Section "Mr ABICHOU Seif"
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
                  Image.asset("images/amir.png", width: 100),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Mr AMIR",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'KoHo',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Specialty : Telecommunication",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Experience : 5 years",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Section "Month 1"
            Text(
              'week 1',
              style: TextStyle(
                color: Color(0xFFBFBBD8),
                fontSize: 30,
                fontFamily: 'Kalam',
                fontWeight: FontWeight.w700,
              ),
            ),

            // Ajout des boutons pour chaque semaine (Month 1)
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                List<String> weekLabels = [
                  'Meet with my mentor',
                  'Projects',
                  'Resources'
                ];
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
                      print('Naviguer vers "${weekLabels[index]}" du mois 1');
                    },
                    child: Text(
                      weekLabels[index],
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
