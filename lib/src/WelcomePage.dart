import 'package:flutter/material.dart';
import 'package:kommunicate_flutter/kommunicate_flutter.dart';
import 'AboutUs.dart';
import 'OurMentors.dart';
import 'OurOffers.dart';
import 'Contact.dart';
import 'WelcomePage.dart';
import 'Projects.dart';
import 'LoginPage.dart';
import 'MentorProfile.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({
    Key? key,
  }) : super(key: key);

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
          // Ajout du bouton pour ouvrir le chatbot
        ],
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
                top: 20.0), // Ajustez le padding supérieur si nécessaire
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF7A66F3), // Couleur de fond
              ),
              child: Text(
                'Get started',
                style: TextStyle(
                  color: Colors.white, // Couleur du texte
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
      // Le bouton flottant reste inchangé
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          dynamic conversationObject = {
            'appId':
                '138816c755f85702af948c8c64b480f45', // L'APP_ID obtenu depuis le tableau de bord Kommunicate.
          };

          KommunicateFlutterPlugin.buildConversation(conversationObject)
              .then((clientConversationId) {
            print("Conversation builder success : " +
                clientConversationId.toString());
          }).catchError((error) {
            print("Conversation builder error : " + error.toString());
          });
        },
        child: Icon(
            Icons.message), // Remplacez le texte par une icône de messagerie
      ),
    );
  }
}
