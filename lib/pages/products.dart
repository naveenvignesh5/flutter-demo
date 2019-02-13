import 'package:flutter/material.dart';

import '../product_manager.dart';
import './products_admin.dart';

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Choose'),
            ),
            ListTile(
              title: Text('Manage Product'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => ProductsAdminPage(),
                  ),
                ).then((value) {
                  Navigator.pop(context);
                });
                // Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Easy List'),
      ),
      body: ProductManager(),
    );
  }
}
