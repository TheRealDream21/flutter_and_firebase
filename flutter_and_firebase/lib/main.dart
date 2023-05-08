import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_and_firebase/firebase_options.dart';
import './screens/wrapper.dart';
import 'package:flutter_and_firebase/services/auth.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform, name: 'Firebase');
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  // Making a instance of AuthService

  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
        initialData: null,
        value: AuthService().user,
        child: MaterialApp(
          home: Wrapper(),
        ));
  }
}
