import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:mentor_mate/src/MentorSignUpController.dart';

// import 'user_model.dart';
// import 'package:get/get.dart';

import 'MentorProfile.dart';

class MentorSignUpPage extends StatefulWidget {
  const MentorSignUpPage({Key? key});

  @override
  _MentorSignUpPageState createState() => _MentorSignUpPageState();
}

class _MentorSignUpPageState extends State<MentorSignUpPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController birthDateController = TextEditingController();
  final TextEditingController professionController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    birthDateController.dispose();
    professionController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 80),
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
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
                  hintText: ' noun@mentormate.com',
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
              'Profession',
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
                controller: professionController,
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
            SizedBox(height: 10),
            Transform.translate(
              offset: Offset(0.0, 30.0),
              child: ElevatedButton(
                onPressed: () async {
                  try {
                    UserCredential userCredential =
                        await _auth.createUserWithEmailAndPassword(
                      email: emailController.text,
                      password: passwordController.text,
                    );

                    print('Sign up Successful: ${userCredential.user!.email}');

                    CollectionReference collRef =
                        FirebaseFirestore.instance.collection("mentors");
                    collRef.add({
                      "birthDate": birthDateController.text,
                      "email": emailController.text,
                      "firstName": firstNameController.text,
                      "lastName": lastNameController.text,
                      "password": passwordController.text,
                      "profession": professionController.text,
                    });

                    // Navigate to the next screen or perform any other actions
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MentorProfile()),
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
                  primary: Color(0xFF7A66F3),
                ),
                child: Text(
                  'Sign up',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
