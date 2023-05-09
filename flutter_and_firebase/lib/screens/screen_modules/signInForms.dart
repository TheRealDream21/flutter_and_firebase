// ignore: file_names

// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';

// ignore: camel_case_types
class signInForm extends StatefulWidget {
  const signInForm({Key? key}) : super(key: key);

  @override
  State<signInForm> createState() => _signInFormState();
}

// ignore: camel_case_types
class _signInFormState extends State<signInForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(children: <Widget>[
        const SizedBox(
          height: 20.0,
        ),
        TextFormField(
          onChanged: (val) {},
        ),
        /*
        to seperate the two different form fields
        */
        const SizedBox(
          height: 20.0,
        ),
        TextFormField(
          obscureText: true,
          onChanged: (val) {},
        ),
      ]),
    );
  }
}
