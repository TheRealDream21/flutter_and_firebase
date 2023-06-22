// ignore_for_file: avoid_print
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_and_firebase/firebase_options.dart';
import 'package:flutter_and_firebase/screens/test/test.dart';
import 'package:flutter_and_firebase/services/auth.dart';
import './screens/wrapper.dart';
import 'package:provider/provider.dart';
import 'package:flutter_and_firebase/screens/test/test.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform, name: 'Firebase');
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // Making a instance of AuthService

  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthService().user,
      initialData: null,
      child: MaterialApp(
        routes: {'test': (context) => const localStorageTester()},
        home: const Wrapper(),
      ),
    );
  }
}
