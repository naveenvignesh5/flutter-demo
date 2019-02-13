import 'dart:async';

import 'package:flutter/material.dart';

class ProductsAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Manage Products'),
        ),
        body: Center(
          child: Text('Admin Page')
        ),
      ),
    );
  }
}