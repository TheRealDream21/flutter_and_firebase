// ignore: file_names
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './authenticate/authenticate.dart';
import 'package:flutter_and_firebase/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User?>(context);
    // ignore: unnecessary_null_comparison
    if (user == null) {
      return const authenticate();
    } else {
      return const home();
    }
  }
}
