import 'package:flutter/material.dart';

import '../../services/auth.dart';

class authenticate extends StatefulWidget {
  const authenticate({Key? key}) : super(key: key);

  @override
  State<authenticate> createState() => _authenticateState();
}

// ignore: camel_case_types
class _authenticateState extends State<authenticate> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(actions: [], title: const Text('Firebase!')),
        body: IconButton(
          onPressed: () async {
            dynamic result = await _auth.signInAnonymously();
            if (result == null) {
              // ignore: avoid_print
              print('error!');
            } else {
              // ignore: avoid_print
              print(result);
            }
          },
          icon: const Icon(Icons.person_4_sharp),
          tooltip: 'sign in anonymously',
        ));
  }
}
