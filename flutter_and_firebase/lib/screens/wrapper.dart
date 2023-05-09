import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './authenticate/authenticate.dart';
import 'package:flutter_and_firebase/screens/home/home.dart';
import 'package:flutter_and_firebase/services/auth.dart';

Future<Widget> initilizeSignIn() async {
  final AuthService _auth = AuthService();
  dynamic result = await _auth.signInAnonymously();
  if (result == null) {
    return authenticate();
  } else {
    return home();
  }
}

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User?>(context);

    if (user != null) {
      return authenticate();
    } else {
      return home();
    }
  }
}
