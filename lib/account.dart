import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:maps_schoolapp/login_page.dart';
import 'package:maps_schoolapp/splashscreen.dart';

class SignOut extends StatefulWidget {
  @override
  _SignOutState createState() => _SignOutState();
}

class _SignOutState extends State<SignOut> {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Center(
        child: RaisedButton(
          child: Text(
            "Sign Out Account",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
          ),
          color: Colors.black,
          onPressed: () {
            signOut();
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => LoginPage()));
          },
        ),
      ),
    ]);
  }

  Future<void> signOut() async {
    await _googleSignIn.signOut();
  }
}
