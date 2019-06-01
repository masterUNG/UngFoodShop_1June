import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart' as prefix0;

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  Widget uploadButton() {
    return IconButton(
      icon: Icon(Icons.cloud_upload, size: 36.0,),
      onPressed: () {},
    );
  }

  Widget nameTextFromField() {
    return TextFormField(
      decoration: InputDecoration(
        icon: Icon(
          Icons.face,
          size: 36.0,
          color: Colors.pink[900],
        ),
        labelText: ': Name',
        helperText: 'Name in English',
        helperStyle:
            TextStyle(color: Colors.pink[200], fontStyle: FontStyle.italic),
        labelStyle: TextStyle(fontSize: 18.0, color: Colors.pink[900]),
      ),
    );
  }

  Widget userTextFromField() {
    return TextFormField(
      decoration: InputDecoration(
        icon: Icon(
          Icons.account_circle,
          size: 36.9,
          color: Colors.blue[700],
        ),
        labelText: 'User :',
        labelStyle: TextStyle(fontSize: 18.0, color: Colors.blue[700]),
        helperText: 'Type User in the Blank',
        helperStyle:
            TextStyle(color: Colors.blue[400], fontStyle: FontStyle.italic),
      ),
    );
  }

  Widget passwordTextFromField() {
    return TextFormField(
      decoration: InputDecoration(
        icon: Icon(
          Icons.lock,
          color: Colors.red[700],
          size: 36.0,
        ),
        labelText: 'Password :',
        labelStyle: TextStyle(fontSize: 18.0, color: Colors.red[700]),
        helperText: 'Password More 6 Charator',
        helperStyle:
            TextStyle(color: Colors.red[400], fontStyle: FontStyle.italic),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.pink[300],
        title: Text('Register'),actions: <Widget>[uploadButton()],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 60.0, left: 50.0, right: 50.0),
        alignment: Alignment(0, -1),
        child: Column(
          children: <Widget>[
            nameTextFromField(),
            userTextFromField(),
            passwordTextFromField()
          ],
        ),
      ),
    );
  }
}
