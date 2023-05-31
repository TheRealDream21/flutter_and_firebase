import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';

class AuthService {
  Stream<User?> get user {
    return _auth.authStateChanges();
  }

  //initialize firebase
  void initFirebase() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  }

<<<<<<< HEAD
//  // create user obj based on firebase user
//   UserModel _userFromFirebaseUser(User user) {
//     return user != null ? User(uid: user.uid) : null;
//   }
=======
  Stream<User?> get user {
    return _auth.authStateChanges();
  }
>>>>>>> f7b10fed80cce8848cc72ad22743c25ae290de02

  final FirebaseAuth _auth = FirebaseAuth.instance;
  // sign in anonymously
  Future signInAnonymously() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      return result.user;
    } catch (e) {
      print(e);
      return null;
    }
  }

<<<<<<< HEAD
  // sign Out
  User? signOut() {
    try {
      UserCredential? result = _auth.signOut() as UserCredential?;
      return result?.user;
    } catch (e) {
      print(e);
=======
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
>>>>>>> f7b10fed80cce8848cc72ad22743c25ae290de02
      return null;
    }
  }
}
