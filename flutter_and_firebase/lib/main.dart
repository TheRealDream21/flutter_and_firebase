// ignore_for_file: avoid_print

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_and_firebase/firebase_options.dart';
import './screens/wrapper.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform, name: 'Firebase');
  runApp( MainApp());
}

class MainApp extends StatelessWidget {

  MainApp({super.key});
  
  // Making a instance of AuthService


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Wrapper(),
    );
  }
}
