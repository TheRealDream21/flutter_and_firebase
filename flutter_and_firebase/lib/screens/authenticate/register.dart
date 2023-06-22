import 'package:flutter/material.dart';
import 'package:flutter_and_firebase/services/auth.dart';

class Register extends StatefulWidget {
  final Function toggleView;
  const Register({super.key, required this.toggleView});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String error = '';
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 800),
          child: TextButton(
            child: const Row(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                Text(
                  "Sign In",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            onPressed: () {
              setState(() {
                widget.toggleView();
              });
            },
          ),
        )
      ], title: const Text('Register into Book Cloud')),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 0.0),
          child: Column(children: [
            Center(
              child: TextButton(
                child: const Text("Anonymous Viewing"),
                onPressed: () async {
                  await _auth.signInAnonymously();
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
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  dynamic result =
                      await _auth.registerwithEandP(email, password);
                  if (result == null) {
                    setState(() => error = 'please supply a valid email');
                  }
                }
              },
            ),
            Text(
              error,
              style: const TextStyle(color: Colors.red, fontSize: 14.0),
            )
          ]),
        ),
      ),
    );
  }
}
