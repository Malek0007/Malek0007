import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'StudentProfile.dart';

class StudentSignUpPage extends StatefulWidget {
  const StudentSignUpPage({Key? key});

  @override
  _StudentSignUpPageState createState() => _StudentSignUpPageState();
}

class _StudentSignUpPageState extends State<StudentSignUpPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController birthDateController = TextEditingController();
  final TextEditingController institution_positionController =
      TextEditingController();
  final TextEditingController fieldController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    birthDateController.dispose();
    institution_positionController.dispose();
    fieldController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 80), // Adjust the top padding as needed
        child: SingleChildScrollView(
          child: Column(
            children: [
              Transform.translate(
                offset: Offset(0.0, -30.0), // Adjust the offset to move higher
                child: SizedBox(
                  width: 494,
                  height: 94,
                  child: Center(
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        color: Color(0xFF7A66F3),
                        fontSize: 65,
                        fontFamily: 'Kalam',
                        fontWeight: FontWeight.w700,
                        height: 1.5,
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                'First name',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontFamily: 'Kalam',
                  fontWeight: FontWeight.w700,
                  height: 1,
                ),
              ),
              Container(
                width: 380,
                height: 57,
                decoration: ShapeDecoration(
                  color: Color(0xFFBEC5FA),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: TextField(
                  controller: firstNameController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    fillColor: Color(0xFF909090),
                  ),
                ),
              ),
              Text(
                'Last name',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontFamily: 'Kalam',
                  fontWeight: FontWeight.w700,
                  height: 1,
                ),
              ),
              Container(
                width: 380,
                height: 57,
                decoration: ShapeDecoration(
                  color: Color(0xFFBEC5FA),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: TextField(
                  controller: lastNameController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    fillColor: Color(0xFF909090),
                  ),
                ),
              ),
              Text(
                'Email',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontFamily: 'Kalam',
                  fontWeight: FontWeight.w700,
                  height: 1,
                ),
              ),
              Container(
                width: 380,
                height: 57,
                decoration: ShapeDecoration(
                  color: Color(0xFFBEC5FA),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'noun@mentormate.com',
                    fillColor: Color(0xFF909090),
                  ),
                ),
              ),
              Text(
                'Birth date',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontFamily: 'Kalam',
                  fontWeight: FontWeight.w700,
                  height: 1,
                ),
              ),
              Container(
                width: 380,
                height: 57,
                decoration: ShapeDecoration(
                  color: Color(0xFFBEC5FA),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: TextField(
                  keyboardType: TextInputType.datetime,
                  controller: birthDateController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'DD/MM/YYYY',
                    fillColor: Color(0xFF909090),
                  ),
                ),
              ),
              Text(
                'Institution/Positon',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontFamily: 'Kalam',
                  fontWeight: FontWeight.w700,
                  height: 1,
                ),
              ),
              Container(
                width: 380,
                height: 57,
                decoration: ShapeDecoration(
                  color: Color(0xFFBEC5FA),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: TextField(
                  controller: institution_positionController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    fillColor: Color(0xFF909090),
                  ),
                ),
              ),
              Text(
                'Field',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontFamily: 'Kalam',
                  fontWeight: FontWeight.w700,
                  height: 1,
                ),
              ),
              Container(
                width: 380,
                height: 57,
                decoration: ShapeDecoration(
                  color: Color(0xFFBEC5FA),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: TextField(
                  controller: fieldController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    fillColor: Color(0xFF909090),
                  ),
                ),
              ),
              Text(
                'Password',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontFamily: 'Kalam',
                  fontWeight: FontWeight.w700,
                  height: 1,
                ),
              ),
              Container(
                width: 380,
                height: 57,
                decoration: ShapeDecoration(
                  color: Color(0xFFBEC5FA),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: '********',
                    fillColor: Color(0xFF909090),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () async {
                    try {
                      UserCredential userCredential =
                          await _auth.createUserWithEmailAndPassword(
                        email: emailController.text,
                        password: passwordController.text,
                      );

                      print(
                          'Sign up Successful: ${userCredential.user!.email}');

                      CollectionReference collRef =
                          FirebaseFirestore.instance.collection("students");
                      collRef.add({
                        "birthDate": birthDateController.text,
                        "email": emailController.text,
                        "firstName": firstNameController.text,
                        "lastName": lastNameController.text,
                        "password": passwordController.text,
                        "institution_position":
                            institution_positionController.text,
                        "field": fieldController.text,
                      });

                      // Navigate to the next screen or perform any other actions
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StudentProfile(),
                        ),
                      );
                    } catch (e) {
                      print('Sign up Failed: $e');
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Sign up Failed: $e'),
                          duration: Duration(seconds: 3),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF7A66F3), // Background color
                  ),
                  child: Text('Sign up',
                      style: TextStyle(
                          color: Colors.white, // Text color
                          fontSize: 16))),
              // StreamBuilder<QuerySnapshot>(
              //     stream: FirebaseFirestore.instance
              //         .collection('students')
              //         .snapshots(),
              //     builder: ((context, snapshot) {
              //       List<Row> mentorsWidgets = [];
              //       if (snapshot.hasData) {
              //         final mentorss = snapshot.data?.docs.reversed.toList();
              //         for (var mentors in mentorss!) {
              //           final mentorsWidget = Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //             children: [
              //               Text(mentors['birthDate']),
              //               Text(mentors['email']),
              //               Text(mentors['field']),
              //               Text(mentors['firstName']),
              //               Text(mentors['institution_position']),
              //               Text(mentors['lastName']),
              //               Text(mentors['password']),
              //             ],
              //           );
              //           mentorsWidgets.add(mentorsWidget);
              //         }
              //       }

              //       return Expanded(
              //           child: ListView(
              //         children: mentorsWidgets,
              //       ));
              //     })),
            ],
          ),
        ),
      ),
    );
  }
}
