import 'package:flutter/material.dart';
import 'package:onesignal/onesignal.dart';

import './pages/auth.dart';

void main() {
  OneSignal.shared.init("d122d49c-9b84-4e2c-a3e0-7e75f3c4a794");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowMaterialGrid: true,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepPurple,
      ),
      home: AuthPage(),
    );
  }
}
