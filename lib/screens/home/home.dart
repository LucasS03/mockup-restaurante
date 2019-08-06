import 'package:flutter/material.dart';
import 'package:restaurante/screens/product/list_products.dart';

class Home extends StatefulWidget {
  String _selectedScreen = '/products';

  Home(this._selectedScreen);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  // String _selectedScreen = '/products';

  _getScreen(String screen) {
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => SecondRoute()),
    // );
    if(screen == '/products')
      return ListProducts();

    return ListProducts();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, viewport) {
          return _getScreen(widget._selectedScreen);
        },
      )
    );
  }

}