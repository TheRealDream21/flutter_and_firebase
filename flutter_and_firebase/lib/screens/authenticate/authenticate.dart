// ignore: unused_import
import 'package:firebase_auth/firebase_auth.dart';
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
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(actions: [], title: const Text('Firebase!')),
        body: Form(
          child: Padding(
            padding: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 0.0),
            child: Column(children: [
              const SizedBox(
                height: 20.0,
              ),
              TextButton(
                child: const Row(
                  children: [Icon(Icons.person), Text("Sign In anon")],
                ),
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
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextFormField(onChanged: (val) {
                setState(() => email = val);
              }),
              TextFormField(
                onChanged: (val) {
                  setState(() => password = val);
                },
                obscureText: true,
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextButton(
                child: const Text("Sign In"),
                onPressed: () {},
              )
            ]),
          ),
        ));
  }
}
