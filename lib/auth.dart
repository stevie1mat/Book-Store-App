import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';

abstract class BaseAuth {
   Future<String>signInWithEmailAndPassword(String email, String password);
   Future<String>createUserWithEmailAndPassword(String email, String password);
   Future<String>currentUser();
   Future<void>signOut();
}
class Auth implements BaseAuth {
   Future<String>signInWithEmailAndPassword(
      String email, String password) async {
      FirebaseUser user =awaitFirebaseAuth.instance
      .signInWithEmailAndPassword(email: email, password: password);
   return user.uid;
   }

   Future<String>createUserWithEmailAndPassword(
      String email, String password) async {
      FirebaseUser user =awaitFirebaseAuth.instance
      .createUserWithEmailAndPassword(email: email, password: password);
      return user.uid;
  }

   Future<String>currentUser() async {
      FirebaseUser user =awaitFirebaseAuth.instance.currentUser();
      return user.uid;
   }

   Future<void>signOut() async {
      returnFirebaseAuth.instance.signOut();
   }
}