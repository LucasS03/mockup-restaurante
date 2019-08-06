import 'package:flutter/material.dart';
import 'package:restaurante/screens/cart/cart.dart';
import 'package:restaurante/screens/menu/menu.dart';

class ListProducts extends StatefulWidget {
  @override
  _ListProductsState createState() => _ListProductsState();
}

class _ListProductsState extends State<ListProducts> {

  dynamic _listProducts = [
    { 
      "id": "1",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjOnRvZBmArMUDzcKubldU8KQa2z1pDPjLqssscVpiwaM_eoGk",
      "title": "Produto 1 Produto 1 Produto 1", 
      "description": "Descrição do produto 1, Descrição do produto 1, Descrição do produto 1, Descrição do produto 1, ",
      "value": "10,00",
    },
    {
      "id": "2",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjOnRvZBmArMUDzcKubldU8KQa2z1pDPjLqssscVpiwaM_eoGk",
      "title": "Produto 2", 
      "description": "Descrição do produto 2",
      "value": "11,00",
    },
    {
      "id": "3",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjOnRvZBmArMUDzcKubldU8KQa2z1pDPjLqssscVpiwaM_eoGk",
      "title": "Produto 3", 
      "description": "Descrição do produto 3",
      "value": "12,00",
    },
    {
      "id": "4",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjOnRvZBmArMUDzcKubldU8KQa2z1pDPjLqssscVpiwaM_eoGk",
      "title": "Produto 4", 
      "description": "Descrição do produto 4",
      "value": "13,00",
    },
    {
      "id": "5",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjOnRvZBmArMUDzcKubldU8KQa2z1pDPjLqssscVpiwaM_eoGk",
      "title": "Produto 5", 
      "description": "Descrição do produto 5",
      "value": "14,00",
    },
    {
      "id": "6",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjOnRvZBmArMUDzcKubldU8KQa2z1pDPjLqssscVpiwaM_eoGk",
      "title": "Produto 6", 
      "description": "Descrição do produto 6",
      "value": "15,00",
    },
  ];

  List _selectedProducts = [];

  @override
  Widget build(BuildContext context) {

    String _qtdItens(String index) {
      
      var res = _selectedProducts.firstWhere(
        (item) => item["id"] == index,
        orElse: () => null
      );
      var id = _selectedProducts.indexOf(res);
      
      // se não existir, retorno zero
      if(id < 0) {
        return "0";
      
      // se existir, retorno a quantidade
      } else {
        return _selectedProducts[id]["qtd"].toString();
      }
    }

    return Scaffold(
      drawer: Menu(),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              title: Text(
                'Restaurante',
                style: TextStyle(
                  fontFamily: 'Darker Grotesque',
                  fontSize: 22
                )
              ),
              background: Image.asset("assets/hamburguer.jpg", fit: BoxFit.cover,),
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                tooltip: 'Ver meus pedidos',
                onPressed: () { 
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Cart()),
                  );
                },
              ),
            ]
          ),
          SliverFillRemaining(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: _listProducts.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 120,
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                    
                      Expanded(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[

                            ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child: Container(
                                child:Image(
                                  fit: BoxFit.fill,
                                  image: AssetImage("assets/produto.jpeg"),
                                ),
                              ),
                            ),

                            SizedBox(width: 5),

                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[

                                  Text(
                                    _listProducts[index]["title"], 
                                    style: TextStyle(
                                      fontFamily: 'Darker Grotesque',
                                      fontSize: 20,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    softWrap: false,
                                  ),

                                  // preço
                                  Text(
                                    "R\$" + _listProducts[index]["value"],
                                    style: TextStyle(
                                      fontFamily: 'Darker Grotesque',
                                      fontSize: 20,
                                      color: Colors.green
                                    )
                                  ),

                                  // descrição
                                  Text(
                                    _listProducts[index]["description"],
                                    style: TextStyle(
                                      fontFamily: 'Darker Grotesque',
                                      fontSize: 16,
                                    ),
                                    textAlign: TextAlign.left,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[

                          InkWell(
                            onTap: () {
                              setState(() {
                                
                                var res = _selectedProducts.firstWhere(
                                  (item) => item["id"] == _listProducts[index]["id"],
                                  orElse: () => null
                                );
                                var id = _selectedProducts.indexOf(res);
                                
                                // se não existir, adiciona
                                if(id < 0) {
                                  _selectedProducts.add({"id": _listProducts[index]["id"], "qtd": 1});
                                
                                // se existir, incremento uma unidade
                                } else {
                                  _selectedProducts[id]["qtd"]++;
                                }

                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.redAccent)
                              ),
                              child: Icon(Icons.add, color: Colors.redAccent),
                            ),
                          ),

                          Text(
                            _qtdItens(_listProducts[index]["id"]), 
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 20
                            ),
                          ),

                          InkWell(
                            onTap: () {
                              setState(() {
                                
                                var res = _selectedProducts.firstWhere(
                                  (item) => item["id"] == _listProducts[index]["id"],
                                  orElse: () => null
                                );
                                var id = _selectedProducts.indexOf(res);
                                
                                // se existir, retira uma unidade
                                if(id >= 0) {
                                  if(_selectedProducts[id]["qtd"] > 0)
                                    _selectedProducts[id]["qtd"]--;
                                }

                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.redAccent)
                              ),
                              child: Icon(Icons.remove, color: Colors.redAccent),
                            ),
                          ),

                        ],
                      ),

                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}