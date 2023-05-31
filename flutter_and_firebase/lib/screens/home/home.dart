import 'package:flutter/material.dart';
import '../../services/auth.dart';

class home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    AuthService _auth = AuthService();
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              _auth.signOut();
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
=======
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text("Home"),
        centerTitle: true,
        actions: <Widget>[
          TextButton.icon(
              onPressed: () async {
                await _auth.signOut();
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.person_2),
              label: const Text("Log Out"))
        ],
      ),
>>>>>>> f7b10fed80cce8848cc72ad22743c25ae290de02
    );
  }
}
