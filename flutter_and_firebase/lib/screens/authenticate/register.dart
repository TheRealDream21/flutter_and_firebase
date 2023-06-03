import 'package:flutter/material.dart';
import 'package:flutter_and_firebase/services/auth.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 0.0),
          child: Column(children: [
            Center(
              child: TextButton(
                child: const Text("Anonymous Viewing"),
                onPressed: () async {
                  final result = await _auth.signInAnonymously();
                },
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextFormField(
                validator: (val) => val!.isEmpty ? 'Enter an email' : null,
                onChanged: (val) {
                  setState(() => email = val);
                }),
            TextFormField(
              validator: (val) =>
                  val!.length < 6 ? 'Enter a password 6+ chars long' : null,
              onChanged: (val) {
                setState(() => password = val);
              },
              obscureText: true,
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextButton(
              child: const Text("Register"),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  print(email);
                  print(password);
                }
              },
            ),
          ]),
        ),
      ),
    );
  }
}
