import 'package:flutter/material.dart';

import 'AboutUs.dart';
import 'OurMentors.dart';
import 'OurOffers.dart';
import 'Contact.dart';
import 'WelcomePage.dart';
import 'Projects.dart';

import 'Projects.dart';
import 'Notes.dart';
import 'MessagePage.dart';
import 'CalendarPage.dart';
import 'weekone.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
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
      //Body
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 300),
                padding: EdgeInsets.all(5.0), // Set your desired padding here
                decoration: BoxDecoration(
                  color: Color(
                      0xFFA3ADFF), // Set your desired background color here
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/kamoun.png', // Replace with your image path
                      width: 30.0, // Set your desired image width
                      height: 30.0, // Set your desired image height
                    ),
                    SizedBox(
                        width: 10.0), // Adjust spacing between image and text
                    Text(
                      'Islem',
                      style: TextStyle(
                        color: Colors.white, // Set your desired text color
                        fontSize: 16.0, // Set your desired text font size
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Telecommunication',
                style: TextStyle(
                  color: Color(0xFF9F8FFF),
                  fontSize: 45.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Kalam',
                ),
              ),
            ],
          ),
          SizedBox(
            height: 0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 30,
              ),
              Text(
                'Messages',
                style: TextStyle(
                  color: Color(0xFFBFBBD8),
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Kalam',
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 30,
              ),
              Text(
                'Feel free to ask any question',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'KoHo',
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 16, top: 8),
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/kamoun.png',
                      width: 30.0,
                      height: 30.0,
                    ),
                    SizedBox(width: 0.0),
                  ],
                ),
              ),
              // Adjust the message text widget as needed
              Container(
                width: 300,
                height: 100,
                margin: EdgeInsets.only(left: 8, top: 8),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Enter your message...',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
