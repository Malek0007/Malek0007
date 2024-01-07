import 'package:flutter/material.dart';


import 'LoginPage.dart';


class StudentSignUpPage extends StatelessWidget {
  const StudentSignUpPage({
    super.key,
  });


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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF7A66F3), // Background color
                  ),
                  child: Text('Sign up',
                      style: TextStyle(
                          color: Colors.white, // Text color
                          fontSize: 16))),
            ],
          ),
        ),
      ),
    );
  }
}





