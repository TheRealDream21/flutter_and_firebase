import 'package:flutter/material.dart';
import '../../services/auth.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    AuthService _auth = AuthService();
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              _auth.signOut();
            },
            child: const Text("Log Out"),
          ),
        ],
        backgroundColor: Colors.amber,
        title: const Text("I wanna be Contigo"),
        centerTitle: true,
      ),
    );
  }
}
