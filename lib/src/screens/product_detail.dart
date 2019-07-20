import 'package:flutter/material.dart';
import 'package:shopping_app/src/screens/shopping_cart.dart';

class ProductDetail extends StatefulWidget {
  final proDetailName;
  final proDetailPic;
  final proDetailOldPrice;
  final proDetailPrice;

  // ignore: non_constant_identifier_names
  ProductDetail(
      {this.proDetailName,
      this.proDetailPic,
      this.proDetailOldPrice,
      this.proDetailPrice});

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text("Product Details"),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('Search');
              }),
          new IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => new ShoppingCart()));
              })
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.proDetailPic),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.proDetailName,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text(
                        "\$${widget.proDetailOldPrice}",
                        style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough),
                      )),
                      Expanded(
                          child: Text("\$${widget.proDetailPrice}",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold)))
                    ],
                  ),
                ),
              ),
            ),
          ),

          // ==============First Buttons==============
          Divider(),
          Row(
            children: <Widget>[
              Expanded(
                //============Size button ================

                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: Text("Size"),
                            content: Text("Choose the size"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text("Close"),
                              )
                            ],
                          );
                        });
                  },
                  textColor: Colors.grey,
                  color: Colors.white,
                  elevation: 0.5,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Size"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                //============Color button ================

                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: Text("Color"),
                            content: Text("Choose the color"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text("Close"),
                              )
                            ],
                          );
                        });
                  },
                  textColor: Colors.grey,
                  color: Colors.white,
                  elevation: 0.5,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Color"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                //============Quantity button ================

                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: Text("Quantity"),
                            content: Text("Choose the quantity"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text("Close"),
                              )
                            ],
                          );
                        });
                  },
                  textColor: Colors.grey,
                  color: Colors.white,
                  elevation: 0.5,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Qty"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          // ==============Second Buttons==============
          Divider(),
          Row(
            children: <Widget>[
              Expanded(
                //============Buy now button ================

                child: MaterialButton(
                  onPressed: () {},
                  textColor: Colors.white,
                  color: Colors.red,
                  elevation: 0.5,
                  child: Text("Buy Now"),
                  shape: StadiumBorder(),
                ),
              ),
              new IconButton(
                icon: Icon(Icons.add_shopping_cart),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => new ShoppingCart()));
                },
                color: Colors.red,
              ),
              new IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () {},
                color: Colors.red,
              ),
            ],
          ),
          Divider(),
          ListTile(
            title: Text("Product Details"),
            subtitle: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."),
          ),
          Divider(),

          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "Product Name:",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(widget.proDetailName),
              )
            ],
          ),

          //TODO implement brand for products

          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "Product Brand:",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text("Brand X"),
              )
            ],
          ),

          //TODO implement Condition for products
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "Product Condition:",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "NEW",
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Divider(),
          Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text("Similar Products")),
          //SimilarProducts
          Container(
            height: 360.0,
            child: SimilarProducts(),
          )
        ],
      ),
    );
  }
}

class SimilarProducts extends StatefulWidget {
  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {
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
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: products.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return ProductDesign(
            proName: products[index]['name'],
            proPic: products[index]['image'],
            proOldPrice: products[index]['old_price'],
            proPrice: products[index]['price'],
          );
        });
  }
}

class ProductDesign extends StatelessWidget {
  final proName;
  final proPic;
  final proOldPrice;
  final proPrice;

  ProductDesign(
      {this.proName,
      this.proPic,
      this.proOldPrice,
      this.proPrice});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: Text("Heor 1"),
          child: Material(
            child: InkWell(
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
                            child: Text(
                              proName,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          Text(
                            "\$$proPrice",
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.w800),
                          )
                        ],
                      ),
                    ),
                  ),
                  child: Image.asset(
                    proPic,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
