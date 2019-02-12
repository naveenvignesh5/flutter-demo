import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String imageUrl;

  ProductPage(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                child: Text('Back'),
                color: Theme.of(context).accentColor,
                onPressed: () => Navigator.pop(context),
              ),
              padding: EdgeInsets.all(10.0),
            )
          ],
        ));
  }
}
