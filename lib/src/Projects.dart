import 'package:flutter/material.dart';
import 'MessagePage.dart';
import 'AboutUs.dart';
import 'OurMentors.dart';
import 'OurOffers.dart';
import 'Contact.dart';
import 'WelcomePage.dart';
import 'Projects.dart';
import 'weekone.dart';
import 'Notes.dart';
import 'CalendarPage.dart';

import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Projects(),
  ));
}

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  _ProjectPageState createState() => _ProjectPageState();
}

class _ProjectPageState extends State<Projects> {
  List<Project> Projects = [
    Project(
        "Plateforme de Sécurité Intégrée pour les Réseaux d'Entreprise",
        "Cisco lance un projet stratégique visant à développer une plateforme de sécurité intégrée pour les réseaux d'entreprise. L'objectif est de créer une solution complète qui garantit la cybersécurité des infrastructures réseau, protégeant les données sensibles et assurant la continuité des opérations commerciales.",
        'https://www.clipartmax.com/png/small/200-2001206_cisco-cisco-high-res-logo.png'),
    Project(
        "Smart Home Hub pour l'internet des objets (IoT)",
        "Samsung lance un projet ambitieux de développement d'un Smart Home Hub avancé pour l'internet des objets (IoT). L'objectif est de créer une plateforme centrale capable de connecter et de gérer divers appareils intelligents au sein d'un foyer, offrant une expérience utilisateur harmonieuse et personnalisée.",
        'https://logos-marques.com/wp-content/uploads/2021/03/Logo-Samsung.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: Container(
                margin: EdgeInsets.only(left: 10),
                width: 80,
                height: 80,
                child: Image.asset(
                  'images/logo_mentormate-removebg-preview.png',
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
        backgroundColor: Color(0xFF7A67F3),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'images/logo.png',
              width: 80,
              color: Colors.transparent,
            ),
            PopupMenuButton<String>(
              color: const Color.fromARGB(0, 255, 255, 255),
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
                print('Selected: $choice');
                switch (choice) {
                  case 'Our offers':
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OurOffers()),
                    );
                    break;
                }
              },
            ),
          ],
        ),
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
                // ... (Other week items)
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
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => Projects()),
                // ); // Close the drawer
              },
            ),
            // ... (Other drawer items)
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 300),
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Color(0xFFA3ADFF),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/someone.png',
                        width: 30.0,
                        height: 30.0,
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        'Malek',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
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
            SizedBox(height: 0),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 30),
                Center(
                  child: Text(
                    ' Projects',
                    style: TextStyle(
                      color: Color(0xFF9F8FFF),
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Kalam',
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                _showAddProjectDialog();
              },
              child: Text('Add Another Project'),
            ),
            for (var project in Projects)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 360,
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Color(0xFFA89BF9),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.network(
                              project.imageLink,
                              width: 150.0,
                              height: 125.0,
                            ),
                            Container(
                              height: 150,
                              width: 160,
                              padding: EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      project.name,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'Kalam',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        project.description,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: 'Kalam',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }

  void _showAddProjectDialog() {
    String projectName = "";
    String projectDescription = "";
    String projectImageLink = "";

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Project'),
          content: Column(
            children: [
              TextField(
                onChanged: (value) {
                  projectName = value;
                },
                decoration: InputDecoration(labelText: 'Project Name'),
              ),
              TextField(
                onChanged: (value) {
                  projectDescription = value;
                },
                decoration: InputDecoration(labelText: 'Project Description'),
              ),
              TextField(
                onChanged: (value) {
                  projectImageLink = value;
                },
                decoration: InputDecoration(labelText: 'Project Image Link'),
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Projects.add(Project(
                      projectName, projectDescription, projectImageLink));
                });
                Navigator.pop(context);
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }
}

class Project {
  final String name;
  final String description;
  final String imageLink;

  Project(this.name, this.description, this.imageLink);
}
