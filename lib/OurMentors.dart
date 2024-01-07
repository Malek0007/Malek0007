import 'package:flutter/material.dart';


class OurMentors extends StatelessWidget {
  const OurMentors({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     backgroundColor: Color(0xFF7A67F3),
      //     title: Image.asset("images/logo_mentormate-removebg-preview.png",
      //         width: 80),
      //     titleSpacing: 10),
      appBar: AppBar(
        backgroundColor: Color(0xFF7A67F3),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "images/logo_mentormate-removebg-preview.png",
              width: 80,
            ),
            PopupMenuButton<String>(
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
                      width: 150,
                      height: 50,
                      decoration: ShapeDecoration(
                        color: Color(0xFFA2ADFF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
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
                if (choice == 'Our mentors') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OurMentors()),
                  );
                }
                // if (choice == 'Our mentors') {}
              },
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          HomePage(),
        ],
      ),
    );
  }
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 430,
          height: 1074,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Color(0xFFDEEBEA)),
          child: Stack(
            children: [
              Positioned(
                left: 30,
                top: 160,
                child: SizedBox(
                  width: 358,
                  height: 60,
                  child: Container(
                    decoration: BoxDecoration(
                      color:
                      Color(0xFF9FA9FF), // Set the background color to blue
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                            width:
                            10), // Adjust the spacing between icon and text as needed
                        Icon(
                          Icons.search,
                          color: Color(0xFF8D8D92),
                        ),
                        SizedBox(
                            width:
                            10), // Adjust the spacing between icon and text as needed
                        Expanded(
                          child: TextField(
                            style: TextStyle(
                              color: Color(0xFF8D8D92),
                              fontSize: 16,
                              fontFamily: 'Kalam',
                              fontWeight: FontWeight.w700,
                            ),
                            decoration: InputDecoration(
                              hintText:
                              'Choose your field of study, your mentor...',
                              hintStyle: TextStyle(
                                color: Color(0xFF8D8D92),
                                fontSize: 16,
                                fontFamily: 'Kalam',
                                fontWeight: FontWeight.w700,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 450,
                child: Container(
                  width: 380,
                  height: 174,
                  decoration: ShapeDecoration(
                    color: Color(0xFF8490ED),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 651,
                child: Container(
                  width: 380,
                  height: 174,
                  decoration: ShapeDecoration(
                    color: Color(0xFFBEC5FA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 251,
                child: Container(
                  width: 380,
                  height: 172,
                  decoration: ShapeDecoration(
                    color: Color(0xFFBEC5FA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 29,
                top: 267,
                child: Container(
                  width: 134,
                  height: 141,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/image 1.png'),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 29,
                top: 663,
                child: Container(
                  width: 134,
                  height: 145,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/image 3.png'),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 29,
                top: 463,
                child: Container(
                  width: 134,
                  height: 145,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/image 2.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 50,
                top: 50,
                child: SizedBox(
                  width: 358,
                  height: 102,
                  child: Text(
                    'Mentor Mate',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF7A66F3),
                      fontSize: 50,
                      fontFamily: 'Kalam',
                      height: 1.5,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 182,
                top: 303,
                child: SizedBox(
                  width: 200,
                  height: 89,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'M Amir Abida ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'KoHo',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Network engineer',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'KoHo',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        '37 Y.O',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'KoHo',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 182,
                top: 513,
                child: SizedBox(
                  width: 200,
                  height: 89,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mr Sami Kammoun ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'KoHo',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'HR Manager',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'KoHo',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        '45 Y.O',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'KoHo',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 182,
                top: 723,
                child: SizedBox(
                  width: 200,
                  height: 89,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mr Amani Abichou ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'KoHo',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'HR Manager',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'KoHo',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        '43 Y.O',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'KoHo',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ],
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
