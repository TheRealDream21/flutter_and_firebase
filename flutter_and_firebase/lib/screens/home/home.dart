// ignore: file_names
import 'package:flutter/material.dart';
import '../../services/auth.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AuthService auth = AuthService();
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              auth.signOut();
            },
            child: const Text(
              "Log Out",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
        backgroundColor: Colors.amber,
        title: const Text("I wanna be Contigo"),
        centerTitle: true,
      ),
      drawer: Drawer(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 30.0),
            child: IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  print("added stuff");
                }),
          )
        ],
      )),
    );
  }
}
