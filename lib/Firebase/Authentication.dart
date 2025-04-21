// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import "dart:developer" as devtools show log;
//
// late final TextEditingController _email;
// late final TextEditingController _password;
//
// Future<void> showErrorDialog(BuildContext context, String text,)async {
//   return showDialog(context: context, builder: (context){
//     return AlertDialog(
//       title: const Text("An error has occurred"),
//       content: Text(text),
//       actions: [
//         TextButton(onPressed: (){
//           Navigator.of(context).pop();
//         }, child: const Text("OK"))
//       ],
//     );
//
//   });
// }
//
// void Register(context){
//   _email = TextEditingController();
//   _password = TextEditingController();
//   // Firebase.initializeApp(options:  DefaultFirebaseOptions.currentPlatform);
//   Firebase.initializeApp();
//   final email = _email.text;
//   final password = _password.text;
//   try {
//     final userCredential = FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password).toString();
//     final user = FirebaseAuth.instance.currentUser;
//     user?.sendEmailVerification();
//     showErrorDialog(context, userCredential);
//   // Navigator.of(context).pushNamed(verifyEmail);
//   }
//
//   // Exception
//   on FirebaseException catch(e){
//   if (e.code == 'weak-password'){ showErrorDialog(context, "Weak password $e");}
//   else {  showErrorDialog(context, "Error${e.code}"); }
//    showErrorDialog(context, "bad ${e.code}");
//   } catch(e){  showErrorDialog(context, e.toString()); }
// }
//
// void Login (context){
//   Firebase.initializeApp();
//   final email = _email.text;
//   final password = _password.text;
//
//   try{
//     final userCredential = FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
//     final user = FirebaseAuth.instance.currentUser;
//     devtools.log(userCredential.toString());
//     devtools.log(user.toString());
//     if (user != null){
//       if(user?.emailVerified ?? false){const Text("Done");
//       devtools.log(userCredential.toString());
//       devtools.log(user.toString());
//       } else{
//         devtools.log(userCredential.toString());
//         devtools.log(user.toString());
//       }}
//     // Error exceptions
//   } on FirebaseAuthException catch(e){
//     if (e.code == 'user-not-found'){  showErrorDialog(context, "User not found"); }
//     else if (e.code == "Wrong password") { showErrorDialog(context,"Wrong password\n$e");}
//     else {  showErrorDialog(context,"bad\n$e"); }
//   }
// }