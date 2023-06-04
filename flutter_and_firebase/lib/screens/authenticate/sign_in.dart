import 'package:flutter/material.dart';
import 'package:flutter_and_firebase/services/auth.dart';

// ignore: camel_case_types
class signIn extends StatefulWidget {
  final Function toggleView;
  const signIn({super.key, required this.toggleView});
  @override
  State<signIn> createState() => _signInState();
}

// ignore: camel_case_types
class _signInState extends State<signIn> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String error = '';
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        TextButton(
          child: const Row(
            children: [
              Icon(
                Icons.person,
                color: Colors.white,
              ),
              Text(
                "Register",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          onPressed: () {
            widget.toggleView();
          },
        )
      ], title: const Text('Sign into Book Cloud')),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 0.0),
          child: Column(children: [
            const SizedBox(
              height: 20.0,
            ),
            TextFormField(
                validator: (val) =>
                    val!.isEmpty ? 'Enter a signed in email' : null,
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
              child: const Text("Sign In"),
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  dynamic result = await _auth.signInwithEandP(email, password);
                  if (result == null) {
                    setState(() => error =
                        'please supply a valid email and matching password');
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
