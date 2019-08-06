import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:restaurante/screens/product/list_products.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color.fromRGBO(232, 232, 232, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 200,
              padding: EdgeInsets.all(10),
              color: Colors.redAccent,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/person.png"),
                    maxRadius: 50,
                    backgroundColor: Colors.white,
                  ),

                  SizedBox(width: 10,),
                  
                  Flexible(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Nome do cliente",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 18, 
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Darker Grotesque',
                          ),
                        ),
                        Text(
                          "Rua José de Alencar, 1775",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 15, 
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Darker Grotesque',
                          ),
                        ),
                        FlatButton(
                          onPressed: () {},
                          color: Colors.white,
                          child: Text("Editar Perfil"),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)
                          )
                        )
                      ],
                    )
                  ),
                  
                ],
              ),
            ),

            Flexible(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () { 
                      Navigator.pushReplacement(
                        context, 
                        MaterialPageRoute(builder: (BuildContext context) => ListProducts())
                      );
                    },                    
                    color: Colors.transparent,
                    splashColor: Colors.redAccent,
                    highlightColor: Colors.transparent,
                    elevation: 0,
                    hoverElevation: 0,
                    highlightElevation: 0,

                    child: Row(
                      children: <Widget>[
                        Icon(Icons.fastfood, size: 30,),
                        SizedBox(width: 10,),
                        Text(
                          "Refeições do dia",
                          style: TextStyle(
                            fontSize: 20, 
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Darker Grotesque',
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  RaisedButton(
                    onPressed: () { print("Pedidos"); },                    
                    color: Colors.transparent,
                    splashColor: Colors.redAccent,
                    highlightColor: Colors.transparent,
                    elevation: 0,
                    hoverElevation: 0,
                    highlightElevation: 0,

                    child: Row(
                      children: <Widget>[
                        Icon(Icons.history, size: 30,),
                        SizedBox(width: 10,),
                        Text(
                          "Meus Pedidos",
                          style: TextStyle(
                            fontSize: 20, 
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Darker Grotesque',
                          ),
                        ),
                      ],
                    ),
                  ),

                  RaisedButton(
                    onPressed: () { print("Pedidos"); },                    
                    color: Colors.transparent,
                    splashColor: Colors.redAccent,
                    highlightColor: Colors.transparent,
                    elevation: 0,
                    hoverElevation: 0,
                    highlightElevation: 0,

                    child: Row(
                      children: <Widget>[
                        Icon(Icons.calendar_today, size: 30,),
                        SizedBox(width: 10,),
                        Text(
                          "Agendar Pedidos",
                          style: TextStyle(
                            fontSize: 20, 
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Darker Grotesque',
                          ),
                        ),
                      ],
                    ),
                  ),

                  RaisedButton(
                    onPressed: () { print("Pedidos"); },                    
                    color: Colors.transparent,
                    splashColor: Colors.redAccent,
                    highlightColor: Colors.transparent,
                    elevation: 0,
                    hoverElevation: 0,
                    highlightElevation: 0,

                    child: Row(
                      children: <Widget>[
                        Icon(Icons.info, size: 30,),
                        SizedBox(width: 10,),
                        Text(
                          "Sobre",
                          style: TextStyle(
                            fontSize: 20, 
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Darker Grotesque',
                          ),
                        ),
                      ],
                    ),
                  ),

                  RaisedButton(
                    onPressed: () { print("Pedidos"); },                    
                    color: Colors.transparent,
                    splashColor: Colors.redAccent,
                    highlightColor: Colors.transparent,
                    elevation: 0,
                    hoverElevation: 0,
                    highlightElevation: 0,

                    child: Row(
                      children: <Widget>[
                        Icon(Icons.exit_to_app, size: 30,),
                        SizedBox(width: 10,),
                        Text(
                          "Sair",
                          style: TextStyle(
                            fontSize: 20, 
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Darker Grotesque',
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}