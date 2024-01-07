import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'WelcomePage.dart';
class FirebaseAuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signUpWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return credential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        showToast(message: 'The email address is already in use.');
      } else {
        showToast(message: 'An error occurred: ${e.code}');
      }
    }
    return null;
  }

  Future<User?> signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(email: email, password: password);
      return credential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        showToast(message: 'Invalid email or password.');
      } else {
        showToast(message: 'An error occurred: ${e.code}');
      }
    }
    return null;
  }

  void showToast({required String message}) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Title',
      home: WelcomePage(), // Replace with your home page widget
    );
  }
}

//class WelcomePage extends StatelessWidget {
  //Implement your home page widget here
//}

class MentorSignUpPage extends StatefulWidget {
  const MentorSignUpPage({Key? key}) : super(key: key);

  @override
  State<MentorSignUpPage> createState() => _MentorSignUpPageState();
}

class _MentorSignUpPageState extends State<MentorSignUpPage> {
  final FirebaseAuthService _auth = FirebaseAuthService();

  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _birthDateController = TextEditingController();
  TextEditingController _professionController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool isSigningUp = false;

  @override
  void dispose() {
    _firstNameController.dispose();
    _emailController.dispose();
    _birthDateController.dispose();
    _professionController.dispose();
    _lastNameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 80),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Transform.translate(
                offset: Offset(0.0, -30.0),
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
              buildTextField('First name', _firstNameController),
              buildTextField('Last name', _lastNameController),
              buildTextField('Email', _emailController),
              buildTextField('Birth date', _birthDateController),
              buildTextField('Profession', _professionController),
              buildTextField('Password', _passwordController),
              SizedBox(height: 10),
              Transform.translate(
                offset: Offset(0.0, 30.0),
                child: ElevatedButton(
                  onPressed: _MentorSignUpPage,
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
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String label, TextEditingController controller) {
    return Column(
      children: [
        Text(
          label,
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
            controller: controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              fillColor: Color(0xFF909090),
            ),
          ),
        ),
      ],
    );
  }

  void _MentorSignUpPage() async {
    setState(() {
      isSigningUp = true;
    });

    String firstname = _firstNameController.text;
    String lastname = _lastNameController.text;
    String profession = _professionController.text;
    String birthdate = _birthDateController.text;
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signUpWithEmailAndPassword(email, password);

    setState(() {
      isSigningUp = false;
    });

    if (user != null) {
      _auth.showToast(message: "User is successfully created");
      Navigator.pushNamed(context, "/home");
    } else {
      _auth.showToast(message: "Some error happened");
    }
  }
}
