import 'package:flutter/material.dart';

class CartProduct extends StatefulWidget {
  @override
  _CartProductState createState() => _CartProductState();
}

class _CartProductState extends State<CartProduct> {
  final cartProductsList = [
    {
      "name": "Blazer 1",
      "image": "images/products/blazer1.jpeg",
      "price": 85,
      "size": "M",
      "color": "Red",
      "quantity": 4
    },
    {
      "name": "Blazer 2",
      "image": "images/products/blazer2.jpeg",
      "price": 85,
      "size": "N",
      "color": "Orange",
      "quantity": 2
    },
    {
      "name": "Blazer 1",
      "image": "images/products/dress1.jpeg",
      "price": 85,
      "size": "O",
      "color": "Black",
      "quantity": 3
    },
    {
      "name": "Blazer 1",
      "image": "images/products/dress2.jpeg",
      "price": 85,
      "size": "P",
      "color": "Green",
      "quantity": 5
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: cartProductsList.length,
        itemBuilder: (context, index) {
          return CartProductDesign(
            proName: cartProductsList[index]["name"],
            proPic: cartProductsList[index]["image"],
            proPrice: cartProductsList[index]["price"],
            proSize: cartProductsList[index]["size"],
            proColor: cartProductsList[index]["color"],
            proQty: cartProductsList[index]["quantity"],
          );
        });
  }
}

class CartProductDesign extends StatelessWidget {
  final proName;
  final proPic;
  final proPrice;
  final proSize;
  final proColor;
  final proQty;

  CartProductDesign(
      {this.proName,
      this.proPic,
      this.proPrice,
      this.proSize,
      this.proColor,
      this.proQty});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        //   ===============Leading Section==================
        leading: Image.asset(
          proPic,
          width: 80.0,
          height: 80.0,
        ),

        //  ===============Title Section======================

        title: Text(proName),

        //  ===============Subtitle Section====================

        subtitle: Column(
          children: <Widget>[
            // ======Row inside Column=======
            Row(
              children: <Widget>[
                // ========Size Section=============

                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Text("Size:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    proSize,
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                ),

                // ========Color Section=============

                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: Text("Color:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(proColor,
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold)),
                ),

              ],
            ),

            // ==============Product Price Section=================

            Container(
              alignment: Alignment.topLeft,
              child: Text("\$$proPrice",
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w800,
                      fontSize: 17.0)),
            )
          ],
        ),

        //============Trailing Section=========================
        //TODO
        trailing: Column(
          children: <Widget>[
            IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
            Text("$proQty"),
            IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){}),
          ],
        ),
      ),
    );
  }
}
