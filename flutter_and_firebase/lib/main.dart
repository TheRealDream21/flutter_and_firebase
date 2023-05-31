<<<<<<< HEAD
// ignore_for_file: avoid_print
=======
>>>>>>> f7b10fed80cce8848cc72ad22743c25ae290de02
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_and_firebase/firebase_options.dart';
import 'package:flutter_and_firebase/services/auth.dart';
import './screens/wrapper.dart';
<<<<<<< HEAD
=======
import 'package:flutter_and_firebase/services/auth.dart';
>>>>>>> f7b10fed80cce8848cc72ad22743c25ae290de02
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform, name: 'Firebase');
<<<<<<< HEAD
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  // Making a instance of AuthService

  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthService().user,
      initialData: null,
      child: const MaterialApp(
        home: Wrapper(),
      ),
    );
=======
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  // Making a instance of AuthService

  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
        initialData: null,
        value: AuthService().user,
        child: const MaterialApp(
          home: Wrapper(),
        ));
>>>>>>> f7b10fed80cce8848cc72ad22743c25ae290de02
  }
}
