import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: 'E-Mail',
              ),
              onChanged: (String value) {
                email = value;
              },
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              onChanged: (String value) {
                password = value;
              },
            ),
            RaisedButton(
              color: Theme.of(context).accentColor,
              textColor: Colors.white,
              child: Text('Login'),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
            ),
          ],
        ),
      ),
    );
  }
}
