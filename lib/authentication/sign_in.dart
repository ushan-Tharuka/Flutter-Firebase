import 'package:firebase/auth.dart';
import 'package:firebase/constants/colors.dart';
import 'package:firebase/constants/description.dart';
import 'package:firebase/constants/styles.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  //function
  final Function toggle;
  const SignInPage({Key? key, required this.toggle}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  //create object for AuthServices class auth reference
  final AuthServices _auth = AuthServices();

  //form key
  final _formKey = GlobalKey<FormState>();
  //email password status
  String email = "";
  String password = "";
  String error = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgBlack,
        appBar: AppBar(
          title: const Text(
            "Sign In",
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
                    height: 150,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          //email
                          TextFormField(
                            style: TextStyle(color: Colors.white),
                            decoration: textInputDecoration,
                            validator: (val) => val?.isEmpty == true
                                ? "Enter a valid email"
                                : null,
                            onChanged: (val) {
                              setState(() {
                                email = val;
                              });
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          //password
                          TextFormField(
                            obscureText: true,
                            style: TextStyle(color: Colors.white),
                            decoration: textInputDecoration.copyWith(
                                hintText: "password"),
                            validator: (val) => val!.length < 6
                                ? "Enter a valid password!"
                                : null,
                            onChanged: (val) {
                              setState(() {
                                password = val;
                              });
                            },
                          ),
                          Text(
                            error,
                            style: TextStyle(color: Colors.red),
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
                                onTap: () {
                                  widget.toggle();
                                },
                                child: const Text(
                                  "REGISTER",
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
                            onTap: () async{
                              dynamic result = await _auth
                                  .signInUsingemailAndPassword(email, password);
                              if (result == null) {
                                setState(() {
                                  error =
                                      "could not sihn in with those credintials";
                                });
                              }
                            },
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
                                  "LOG IN",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            //method for login user
                            onTap: () async {
                              dynamic result = await _auth
                                  .signInUsingemailAndPassword(email, password);
                              if (result == null) {
                                setState(() {
                                  error =
                                      "could not sihn in with those credintials";
                                });
                              }
                            },
                            child: GestureDetector(
                              onTap: () async {
                                // when click aign ano button
                                dynamic anoresult =
                                    await _auth.signInAnonymously();
                                if (anoresult == Null) {
                                  print("Error in sign in anon");
                                } else {
                                  print("Signed in anon");
                                  print("User ID: ${anoresult.uid}");
                                }
                              },
                              child: Container(
                                height: 40,
                                width: 200,
                                decoration: BoxDecoration(
                                    color: bgBlack,
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                        width: 2, color: mainYellow)),
                                child: const Center(
                                  child: Text(
                                    "LOG AS GUEST",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          //anon
                        ],
                      )),
                )
              ],
            ),
          ),
        ));
  }
}

// ElevatedButton(
//           child: const Text("Sign in Anonymously"),
//           onPressed: () async {
//             // when click aign ano button
//             dynamic anoresult = await _auth.signInAnonymously();
//             if (anoresult == Null) {
//               print("Error in sign in anon");
//             } else {
//               print("Signed in anon");
//               print("User ID: ${anoresult.uid}");
//             }
//           },
//         ),
