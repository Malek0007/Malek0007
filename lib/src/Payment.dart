import 'package:flutter/material.dart';

import 'StudentProfile.dart';

class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 430,
          height: 932,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Color(0xFFDEEBEA)),
          child: Stack(
            children: [
              Positioned(
                left: 92,
                top: 477,
                child: Container(
                  width: 101,
                  height: 92,
                  decoration: ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 94,
                top: 78,
                child: SizedBox(
                  width: 494,
                  height: 94,
                  child: Text(
                    'Payment',
                    style: TextStyle(
                      color: Color(0xFF7A66F3),
                      fontSize: 65,
                      fontFamily: 'Kalam',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 15,
                top: 243,
                child: Container(
                  width: 401,
                  height: 558,
                  decoration: ShapeDecoration(
                    color: Color(0xFFA2ADFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 43,
                top: 578,
                child: SizedBox(
                  width: 257,
                  height: 41,
                  child: Text(
                    'Password',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontFamily: 'Kalam',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 52,
                top: 261,
                child: SizedBox(
                  width: 327,
                  child: Text(
                    'Chose a method of \npayment',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 26,
                      fontFamily: 'Kalam',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 37,
                top: 354,
                child: Container(
                  width: 110,
                  height: 80,
                  decoration: ShapeDecoration(
                    color: Color(0xFF8491EA),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 290,
                top: 354,
                child: Container(
                  width: 105,
                  height: 75,
                  decoration: ShapeDecoration(
                    color: Color(0xFF818CE7),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 297,
                top: 371,
                child: Container(
                  width: 92,
                  height: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/mastercard.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 163,
                top: 354,
                child: Container(
                  width: 110,
                  height: 80,
                  decoration: ShapeDecoration(
                    color: Color(0xFF818CE7),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 173,
                top: 361,
                child: Container(
                  width: 86,
                  height: 57,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/paypal.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 43,
                top: 365,
                child: Container(
                  width: 96,
                  height: 58,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/visa.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 25,
                top: 512,
                child: Container(
                  width: 380,
                  height: 57,
                  decoration: ShapeDecoration(
                    color: Color(0xFFBEC5FA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 25,
                top: 628,
                child: Container(
                  width: 380,
                  height: 57,
                  decoration: ShapeDecoration(
                    color: Color(0xFFBEC5FA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 37,
                top: 647,
                child: SizedBox(
                  width: 238,
                  height: 36,
                  child: Text(
                    '******************',
                    style: TextStyle(
                      color: Color(0xFF909090),
                      fontSize: 30,
                      fontFamily: 'Kalam',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 37,
                top: 466,
                child: SizedBox(
                  width: 257,
                  height: 41,
                  child: Text(
                    'Credit number',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontFamily: 'Kalam',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 134,
                top: 723,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StudentProfile()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF7A66F3), // Background color
                  ),
                  child: Text(
                    'Pay',
                    style: TextStyle(
                      color: Colors.white, // Text color
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
