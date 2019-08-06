import 'package:flutter/material.dart';
import 'package:restaurante/models/orderModel.dart';
import 'package:scoped_model/scoped_model.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Meu carrinho"),
        centerTitle: true,
        leading: Icon(Icons.chevron_left, size: 30,),
      ),

      body: ScopedModelDescendant<OrderModel>(
        builder: (context, builder, model) {
          return Container(
            child: Column(
              children: <Widget>[
                Text(model.teste),
              ],
            ),
          );
        },
      ),
    );
  }
}