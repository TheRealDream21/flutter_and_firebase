// ignore: unused_import
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../services/auth.dart';

class authenticate extends StatefulWidget {
  authenticate({super.key});

  @override
  State<authenticate> createState() => _authenticateState();
}

class _authenticateState extends State<authenticate> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(actions: [], title: const Text('Firebase!')),
        body: Form(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 0.0),
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
              TextFormField(onChanged: (val) {}),
              TextFormField(
                onChanged: (val) {},
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
