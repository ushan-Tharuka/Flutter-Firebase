import 'package:firebase/auth.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  //create object for AuthServices class auth reference
  final AuthServices _auth = AuthServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign In"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Sign in Anonymously"),
          onPressed: () async {
            // when click aign ano button
            dynamic anoresult = await _auth.signInAnonymously();
            if (anoresult == Null) {
              print("Error in sign in anon");
            } else {
              print("Signed in anon");
              print("User ID: ${anoresult.uid}");
            }
          },
        ),
      ),
    );
  }
}
