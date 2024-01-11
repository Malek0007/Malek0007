import 'package:flutter/material.dart';

import 'AboutUs.dart';
import 'OurMentors.dart';
import 'OurOffers.dart';
import 'Contact.dart';
import 'WelcomePage.dart';
import 'Projects.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key});

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
            SizedBox(
              height: 20,
            ),
            Text(
              'About Us',
              style: TextStyle(
                color: Color(0xFF7A66F3),
                fontSize: 45,
                fontFamily:
                    'Kalam', // Utilisation de la même police que pour le titre
                fontWeight: FontWeight.w700,
                height: 1.8,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "images/about_us_image.png",
              width: 270, // Augmentation de la largeur de l'image
              height:
                  270, // Même hauteur que la largeur pour garder un aspect carré
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(
                  16), // Ajout de padding pour l'espace autour du texte
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFBFC5FA),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'Our app is a personalized mentorship platform connecting students with experienced mentors. It offers tailored matches, seamless communication, resource access, and goal tracking. We empower individuals to navigate their journeys with expert guidance and diverse opportunities for growth.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily:
                      'Kalam', // Utilisation de la même police que pour le titre
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
