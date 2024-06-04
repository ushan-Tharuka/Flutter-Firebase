import 'package:firebase/auth.dart';
import 'package:firebase/constants/colors.dart';
import 'package:firebase/constants/description.dart';
import 'package:firebase/constants/styles.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  //create object for AuthServices class auth reference
  final AuthServices _auth = AuthServices();

  //form key
  final _formKey = GlobalKey<FormState>();
  //email password status
  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgBlack,
        appBar: AppBar(
          title: const Text(
            "Register",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: bgBlack,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 10),
            child: Column(
              children: [
                //description
                const Text(
                  description,
                  style: descriptionStyle,
                ),
                Center(
                  child: Image.asset(
                    "assets/images/userImg.png",
                    height: 200,
                  ),
                ),
                Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        //email
                        TextFormField(
                          validator: (val) => val?.isEmpty == true
                              ? "Enter a valid email"
                              : null,
                          onChanged: (val) {
                            setState(() {
                              email = val;
                            });
                          },
                        ),
                        //password
                        TextFormField(
                          validator: (val) => val!.length < 6
                              ? "Enter a valid password!"
                              : null,
                          onChanged: (val) {
                            setState(() {
                              password = val;
                            });
                          },
                        ),
                        //google
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Loging with social accounts",
                          style: descriptionStyle,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          //google login
                          onTap: () {},
                          child: Center(
                            child: Image.asset(
                              "assets/images/googleLogo.png",
                              height: 40,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),

                        //register
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Do not have an account?",
                              style: descriptionStyle,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              //go to register page
                              onTap: () {},
                              child: const Text(
                                "LOG IN",
                                style: TextStyle(
                                    color: mainBlue,
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                        //button
                        const SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          //method for login user
                          onTap: () {},
                          child: Container(
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                                color: bgBlack,
                                borderRadius: BorderRadius.circular(100),
                                border:
                                    Border.all(width: 2, color: mainYellow)),
                            child: const Center(
                              child: Text(
                                "REGISTER",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),

                        //anon
                      ],
                    ))
              ],
            ),
          ),
        ));
  }
}
