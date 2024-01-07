import 'package:flutter/material.dart';


import 'StudentOrMentorPage.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Transform.translate(
            offset: Offset(0.0, -30.0), // Adjust the offset to move higher
            child: Transform(
              transform: Matrix4.identity()..rotateZ(0.26),
              child: Container(
                width: 150,
                height: 120,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/Graduation_cap.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, -10.0), // Adjust the offset to move higher
            child: SizedBox(
              height: 90, // Use height instead of width
              child: Center(
                child: Row(
                  // Row widget here
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(
                        color: Color(0xFF7A66F3),
                        fontSize: 80,
                        fontFamily: 'Kalam',
                        fontWeight: FontWeight.w700,
                        height: 1,
                      ),
                    ),
                  ],
                ),
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
                hintText: ' noun@mentormate.com',
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
              height: 1.5,
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
                hintText: '  ************',
                fillColor: Color(0xFF909090),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              // Add your button click logic here
              print('Login Button Pressed');
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF7A66F3), // Background color
            ),
            child: Text('Login',
                style: TextStyle(color: Colors.white, fontSize: 16)),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Sign in with',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black.withOpacity(0.6700000166893005),
              fontSize: 24,
              fontFamily: 'KoHo',
              fontWeight: FontWeight.w700,
              height: 2,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 53,
                height: 51,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/google-logo.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                width: 62,
                height: 51,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/fb-logo.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                width: 63,
                height: 49,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/apple-logo.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don’t have an account?',
                  style: TextStyle(
                    color: Color(0xFF909090),
                    fontSize: 24,
                    fontFamily: 'KoHo',
                    fontWeight: FontWeight.w700,
                    height: 2,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StudentOrMentorPage(),
                      ),
                    );
                  },
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      color: Color(0xFF3722BC),
                      fontSize: 24,
                      fontFamily: 'KoHo',
                      fontWeight: FontWeight.w700,
                      height: 2,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


