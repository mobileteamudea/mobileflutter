import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../models/User.dart' as UserApp;

class FirebaseApi {
  Future<Object?> registerUser(String email, String password) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user?.uid;
    } on FirebaseAuthException catch (e) {
      print("FirebaseAuthExcepcio ${e.code}");
      return e.code;
    } on FirebaseException catch (e) {
      print("FirebaseExcepcion ${e.code}");
      return e.code;
    }
  }

  Future<String?> logInUser(String email, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return credential.user?.uid.toString();
    } on FirebaseAuthException catch (e) {
      print("FirebaseAuthException ${e.code}");
      return e.code;
    } on FirebaseException catch (e) {
      print("FirebaseException ${e.code}");
      return e.code;
    }
  }

  Future<String> createUser(UserApp.User user) async {
    try {
      final document = await FirebaseFirestore.instance
          .collection("Users")
          .doc(user.uid)
          .set(user.toJson());
      return user.uid;
    } on FirebaseException catch (e) {
      print("FirebaseExcepcion: ${e.code}");
      return e.code;
    }
  }
}
