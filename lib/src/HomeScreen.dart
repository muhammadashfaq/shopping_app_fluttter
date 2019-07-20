import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:shopping_app/src/components/horizental_listview.dart';
import 'package:shopping_app/src/components/products.dart';
import 'package:shopping_app/src/screens/shopping_cart.dart';

//my own imports


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    //Image Slider
    Widget imageCarsoral = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage("images/w3.jpeg"),
          AssetImage("images/c1.jpg"),
          AssetImage("images/m1.jpeg"),
          AssetImage("images/w4.jpeg"),
          AssetImage("images/m2.jpg")
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(microseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 10.0,
        dotBgColor: Colors.transparent,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text("Ecommerce App"),
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
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //header of navigation drawer

            new UserAccountsDrawerHeader(
              accountName: Text("Muhammad Ashfaq"),
              accountEmail: Text("ashfaq@hotmail.com"),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.red),
            ),

            //body of navigation drawer
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home, color: Colors.redAccent),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Account"),
                leading: Icon(Icons.account_circle, color: Colors.redAccent),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Orders"),
                leading: Icon(Icons.shopping_basket, color: Colors.redAccent),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => new ShoppingCart()));
              },
              child: ListTile(
                title: Text("Cart"),
                leading: Icon(Icons.shopping_cart, color: Colors.redAccent),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Favorites"),
                leading: Icon(Icons.favorite, color: Colors.redAccent),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Setting"),
                leading: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("About"),
                leading: Icon(
                  Icons.help,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
         // image carsoral

          imageCarsoral,

          //Padding widget
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                alignment: Alignment.centerLeft,
                child: Text("Categories")),
          ),
          //Horizontal ScrollView starts here
          HorizatalListView(),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                alignment: Alignment.centerLeft,
                child: Text("Recent products")),
          ),
          //grid view
          Flexible(child: Products()),
        ],
      ),
    );
  }
}
