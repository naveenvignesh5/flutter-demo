import 'package:flutter/material.dart';
import 'package:onesignal/onesignal.dart';

import './pages/auth.dart';
import './pages/products_admin.dart';
import './pages/products.dart';
import './pages/product.dart';

void main() {
  OneSignal.shared.init("d122d49c-9b84-4e2c-a3e0-7e75f3c4a794");
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<Map<String, dynamic>> _products = [];

  void _addProduct(Map<String, dynamic> product) {
    setState(() {
      _products.add(product);
    });
    print(_products); // equivalent of console.log()
  }

  void _deleteProduct(int index) {
    setState(() {
      _products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowMaterialGrid: true,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepPurple,
      ),
      // home: AuthPage(), or '/' in routes
      routes: {
        '/': (BuildContext context) => AuthPage(),
        '/products': (BuildContext context) =>
            ProductsPage(_products),
        '/admin': (BuildContext context) => ProductsAdminPage(_addProduct, _deleteProduct),
      },
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathParams =
            settings.name.split('/'); // -- /product/1

        if (pathParams[0] != '') {
          return null;
        }

        if (pathParams[1] == 'product') {
          final int index = int.parse(pathParams[2]);
          return MaterialPageRoute<bool>(
            builder: (BuildContext context) => ProductPage(
                _products[index]['title'], _products[index]['image']),
          );
        }

        return null;
      },
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (BuildContext context) =>
              ProductsPage(_products),
        );
      },
    );
  }
}
