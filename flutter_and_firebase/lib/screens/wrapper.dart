<<<<<<< HEAD
// ignore: file_names
=======
>>>>>>> f7b10fed80cce8848cc72ad22743c25ae290de02
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './authenticate/authenticate.dart';
import 'package:flutter_and_firebase/screens/home/home.dart';

class Wrapper extends StatelessWidget {
<<<<<<< HEAD
  const Wrapper({super.key});
=======
  const Wrapper({Key? key}) : super(key: key);
>>>>>>> f7b10fed80cce8848cc72ad22743c25ae290de02

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User?>(context);
<<<<<<< HEAD
    // ignore: unnecessary_null_comparison
    if (user == null) {
      return authenticate();
    } else {
      return const home();
=======

    if (user != null) {
      return home();
    } else {
      return const authenticate();
>>>>>>> f7b10fed80cce8848cc72ad22743c25ae290de02
    }
  }
}
