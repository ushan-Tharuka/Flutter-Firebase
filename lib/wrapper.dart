import 'package:firebase/authentication/sign_in.dart';
import 'package:firebase/home/home.dart';
import 'package:firebase/models/UserModel.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    //The user data that the provider provide this can be a user data or can be null
    final user = Provider.of<UserModel?>(context);

    if (user == null) {
      return const SignInPage();
    } else {
      return Home();
    }
  }
}
