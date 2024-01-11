// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// import 'authentication_repository.dart';

// import 'package:get/get.dart';
// import 'user_model.dart';
// import 'user_repository.dart';

// import 'WelcomePage.dart';

// class MentorSignUpController extends GetxController {
//   static MentorSignUpController get instance => MentorSignUpController();

//   final userRepository = UserRepository.instance;
//   final authRepository = AuthenticationRepository.instance;

//   Future<void> registerUser({
//     required String email,
//     required String password,
//     required UserModel user,
//   }) async {
//     try {
//       // Step 1: Register user with Firebase Authentication
//       String? authError =
//           await authRepository.createUserWithEmailAndPassword(email, password);

//       if (authError != null) {
//         Get.showSnackbar(GetSnackBar(message: authError));
//         return;
//       }

//       // Step 2: Create user in Firestore database
//       await userRepository.createUser(user);

//       // Continue with any other logic or navigation as needed
//       // For example, navigate to the home screen after successful registration
//       Get.offAll(() => WelcomePage());
//     } catch (e) {
//       Get.showSnackbar(GetSnackBar(message: 'Error: $e'));
//     }
//   }
// }
// // class MentorSignUpController extends GetxController {
// //   static MentorSignUpController get instance => Get.find();
// // //TextField Controllers to get date from TextFields
// //   final firstName = TextEditingController();
// //   final lastName = TextEditingController();
// //   final email = TextEditingController();
// //   final birthDate = TextEditingController();
// //   final profession = TextEditingController();
// //   final password = TextEditingController();

// //   final userRepo = Get.put(UserRepository());
// //   final authRepo = Get.put(AuthenticationRepository()); // Add this line

// // //Coll these Functions fram Desigo & they will do the Logic
// //   void registerUser(String email, String password) {
// //     String? error = authRepo.createUserWithEmailAndPassword(email, password);
// //     if (error != null) {
// //       Get.showSnackbar(GetSnackBar(message: error.toString()));
// //     }
// //   }
// //   // void registerUser(String email, String password) {
// //   //   String? error = AuthenticationRepository.instance
// //   //       .createUserWithEmailAndPassword(email, password) as String?;
// //   //   if (error != null) {
// //   //     Get.showSnackbar(GetSnackBar(message: error.toString()));
// //   //   }
// //   // }

// //   Future<void> createUser(UserModel user) async {
// //     await userRepo.createUser(user);
// //     emailAuthentication(user.email);
// //     Get.to(() => const OTPScreen());
// //   }

// // // // Get plane free endass it to eats Festors for Free AuthentxoUTE
// //   // Void phoneAuthentication(String email) {
// //   //   AuthenticationRepository.Instance.emailAuthentication(email);
// //   // }
// // }
