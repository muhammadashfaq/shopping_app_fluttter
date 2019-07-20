import 'package:flutter/material.dart';
import 'package:shopping_app/src/screens/product_detail.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var products = [
    {
      "name": "Blazer 1",
      "image": "images/products/blazer1.jpeg",
      "old_price": "120",
      "price": "85"
    },
    {
      "name": "Red Dress",
      "image": "images/products/dress1.jpeg",
      "old_price": "100",
      "price": "50"
    },
    {
      "name": "Blazer 2",
      "image": "images/products/blazer2.jpeg",
      "old_price": "220",
      "price": "180"
    },
    {
      "name": "Pants 1",
      "image": "images/products/pants1.jpg",
      "old_price": "300",
      "price": "250"
    },
    {
      "name": "Pants 2",
      "image": "images/products/pants2.jpeg",
      "old_price": "120",
      "price": "85"
    },
    {
      "name": "Shoe",
      "image": "images/products/shoe1.jpg",
      "old_price": "220",
      "price": "180"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: products.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: ProductDesign(
              proName: products[index]['name'],
              proPic: products[index]['image'],
              proOldPrice: products[index]['old_price'],
              proPrice: products[index]['price'],

            ),
          );
        }
    );
  }
}


class ProductDesign extends StatelessWidget {
  final proName;
  final proPic;
  final proOldPrice;
  final proPrice;

  ProductDesign({
    this.proName,
    this.proPic,
    this.proOldPrice,
    this.proPrice
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: Text("Heor 1"),
          child: Material(child: InkWell(
            onTap: () =>
            //Here we're passing product values to product details page
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => new ProductDetail(
                      proDetailName: proName,
                      proDetailPic: proPic,
                      proDetailPrice: proPrice,
                      proDetailOldPrice: proOldPrice,
                    ))),
            child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(proName,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800)),
                        ),
                        Text("\$$proPrice",style: TextStyle(color: Colors.red,fontWeight: FontWeight.w800),)
                      ],
                    ),
                  ),
                ),
                child: Image.asset(proPic,
                  fit: BoxFit.cover,)
            ),
          ),)),
    );
  }
}

