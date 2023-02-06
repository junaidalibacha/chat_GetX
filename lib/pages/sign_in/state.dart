import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignInState {
  GoogleSignIn googleSignIn = GoogleSignIn(
    scopes: <String>['openId'],
  );
  var db = FirebaseFirestore.instance;
}
