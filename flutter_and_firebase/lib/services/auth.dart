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

//  // create user obj based on firebase user
//   UserModel _userFromFirebaseUser(User user) {
//     return user != null ? User(uid: user.uid) : null;
//   }

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

  // sign Out
  Future signOut() async {
    try {
      UserCredential? result = (await _auth.signOut) as UserCredential?;
      return result?.user;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
