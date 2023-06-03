// ignore: unused_import
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_and_firebase/screens/authenticate/register.dart';
import '../../services/auth.dart';

class authenticate extends StatefulWidget {
  const authenticate({Key? key}) : super(key: key);

  @override
  State<authenticate> createState() => _authenticateState();
}

// ignore: camel_case_types
class _authenticateState extends State<authenticate> {
  final AuthService _auth = AuthService();
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [], title: const Text('Firebase!')),
      body: Form(
        child: Column(children: [
          SizedBox(
            child: Register(),
            height: 400.0,
          )
        ]),
      ),
    );
  }
}
