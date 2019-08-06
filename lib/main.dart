import 'package:flutter/material.dart';
import 'package:restaurante/models/orderModel.dart';
import 'package:restaurante/screens/product/list_products.dart';
import 'package:scoped_model/scoped_model.dart';

void main() {

  runApp(
    Teste(
      model: OrderModel()
    )
  );

}

class Teste extends StatelessWidget {

  final OrderModel model;
  const Teste({Key key, @required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScopedModel<OrderModel>(
      model: model,
      child: MaterialApp(
        title: "Restaurante",
        debugShowCheckedModeBanner: false,
        home: ListProducts(),
        theme: ThemeData(
          primaryColor: Colors.redAccent,
          highlightColor: Colors.redAccent,
          accentColor: Colors.redAccent
        ),
      )
    );
  }
}