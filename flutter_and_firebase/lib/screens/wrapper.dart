import 'package:flutter/material.dart';
import './authenticate/authenticate.dart';
import 'package:flutter_and_firebase/screens/home/home.dart';
import 'package:flutter_and_firebase/services/auth.dart';

Future<Widget> initilizeSignIn() async{
  final AuthService _auth = AuthService();
  dynamic result = await _auth.signInAnonymously();
  if(result == null){
    return authenticate();
  }else{
    return home();
  }
}

class Wrapper extends StatelessWidget {
  Wrapper({super.key});
  

  @override
  Widget build(BuildContext context) {
    // return authenticate();
    // ignore: unnecessary_null_in_if_null_operators
    // return initilizeSignIn().then((value) => value);
    return authenticate();
  }
}