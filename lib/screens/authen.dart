import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart' as prefix0;

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  Widget signUpButton() {
    return RaisedButton(
      color: Colors.pink[100],
      child: Text('Sign Up'),
      onPressed: () {
        print('You Click Sign Up');
      },
    );
  }

  Widget signInButton() {
    return RaisedButton(
      color: Colors.pink[400],
      child: Text(
        'Sign In',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {},
    );
  }

  Widget passwordTextFromField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password :',
        labelStyle: TextStyle(color: Colors.pink[700]),
        hintText: 'More 6 Charactor',
        helperText: 'Please Type Password Here !!!',
        helperStyle:
            TextStyle(color: Colors.pink[400], fontStyle: FontStyle.italic),
      ),
    );
  }

  Widget userTextFromField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'User :',
        labelStyle: TextStyle(color: Colors.pink[700]),
        hintText: 'Not Blank',
        helperText: 'Please Type User Here !!!',
        helperStyle:
            TextStyle(color: Colors.pink[400], fontStyle: FontStyle.italic),
      ),
    );
  }

  Widget showLogo() {
    return Image.asset('images/logo.png');
  }

  Widget showAppName() {
    return Text(
      'Ung Food Shop',
      style: TextStyle(
          fontSize: 35.0,
          fontWeight: FontWeight.bold,
          color: Colors.pink[700],
          fontFamily: 'Pacifico'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.white, Colors.pink[200]], begin: Alignment(-1, -1)),
        ),
        padding: EdgeInsets.only(top: 60.0),
        alignment: Alignment(0, -1),
        child: Column(
          children: <Widget>[
            Container(
              width: 150.0,
              height: 150.0,
              child: showLogo(),
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: showAppName(),
            ),
            Container(
              margin: EdgeInsets.only(left: 50.0, right: 50.0),
              child: userTextFromField(),
            ),
            Container(
              margin: EdgeInsets.only(left: 50.0, right: 50.0),
              child: passwordTextFromField(),
            ),
            Container(
              margin: EdgeInsets.only(left: 50.0, right: 50.0, top: 8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: signInButton(),
                  ),
                  Expanded(
                    child: signUpButton(),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
