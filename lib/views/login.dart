import 'package:flutter/material.dart';
import 'package:j_one/views/home_screen.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginFields(),
    );
  }
}

// ignore: must_be_immutable
class LoginFields extends StatelessWidget {
  List<Color> _colors = [
    Colors.blue[900],
    Colors.blue[800],
  ];
  List<double> _stops = [0.0, 0.7];

  TextStyle _textStyle = new TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  TextStyle _hintStyle = new TextStyle(
    color: Colors.white,
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30, right: 30),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: _colors,
          stops: _stops,
        ),
      ),
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height * .22,
          ),
          Icon(
            Icons.account_balance_wallet,
            color: Colors.white,
            size: 50,
          ),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.center,
            child: Text(
              "User Login".toUpperCase(),
              style: _textStyle,
            ),
          ),
          SizedBox(height: 30),
          Text("User Name", style: _hintStyle),
          SizedBox(height: 5),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextField(
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding: const EdgeInsets.only(left: 10),
                  hintText: "Enter Your User Name",
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
          ),
          SizedBox(height: 10),
          Text("Password", style: _hintStyle),
          SizedBox(height: 5),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextField(
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding: const EdgeInsets.only(left: 10),
                  hintText: "Enter Your Password",
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
          ),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.only(left: 50, right: 50),
                primary: Colors.white,
                onPrimary: Colors.blue[800],
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(5),
                ),
              ),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Text("Login"),
            ),
          ),
        ],
      ),
    );
  }
}
