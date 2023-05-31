import 'package:flutter/material.dart';
import 'package:flutter_and_firebase/screens/authenticate/authenticate.dart';

class signIn extends StatefulWidget {
  const signIn({Key? key}) : super(key: key);

  @override
  State<signIn> createState() => _signInState();
}

class _signInState extends State<signIn> {
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [TextButton(onPressed: () {}, child: const Text("Back"))],
        title: const Text("Sign in to BookCloud"),
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(
        child: Column(children: [
          const SizedBox(
            height: 20.0,
          ),
          TextFormField(
            onChanged: (val) {
              email = val;
            },
          ),
          const SizedBox(
            height: 20.0,
          ),
          TextFormField(
            obscureText: true,
            onChanged: (val) {
              password = val;
            },
          ),
          TextButton.icon(
              onPressed: () {
                print(email);
                print(password);
              },
              icon: const Icon(Icons.margin_outlined),
              label: const Text("Sign In"))
        ]),
      ),
    );
  }
}
