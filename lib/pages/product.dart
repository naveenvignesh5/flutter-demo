import 'dart:async';

import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String imageUrl;

  ProductPage(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        print('Back Button Pressed');
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(imageUrl),
            Container(
              child: Text(title),
              padding: EdgeInsets.all(10.0),
            ),
            Container(
              child: RaisedButton(
                child: Text('DELETE'),
                color: Theme.of(context).accentColor,
                onPressed: () => Navigator.pop(context, true),
              ),
              padding: EdgeInsets.all(10.0),
            )
          ],
        ),
      ),
    );
  }
}
