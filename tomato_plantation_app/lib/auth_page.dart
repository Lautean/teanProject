import 'package:flutter/material.dart';
import 'package:tomato_plantation_app/login.dart';
import 'package:tomato_plantation_app/selection_buttons.dart';
import 'package:firebase_auth/firebase_auth.dart';
class AuthPage extends StatelessWidget {
  const AuthPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot) {
          //user is logged in
          if (snapshot.hasData) {
            return const SelectionButtons();
          }
          //user is Not logged in
          else {
            return const LoginPage();
          }
        },
      ),
    );
  }
}

















































































