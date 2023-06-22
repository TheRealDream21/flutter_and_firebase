import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';

class localStorageTester extends StatefulWidget {
  const localStorageTester({super.key});

  @override
  State<localStorageTester> createState() => _localStorageTesterState();
}

class _localStorageTesterState extends State<localStorageTester> {
  @override
  dynamic localS = new LocalStorage("songs/artists");

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Item Playground"),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 0.0),
          child: TextFormField(
            decoration: const InputDecoration(hintText: "First Name"),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter some text';
              }
            },
          ),
        ));
  }
}

class songItem {
  String title = '';
  String artist = '';

  songItem({required this.title, required this.artist});

  toJSONEncodable() {
    Map<String, String> m = {};

    m['title'] = title;
    m['artist'] = artist;

    return m;
  }
}
