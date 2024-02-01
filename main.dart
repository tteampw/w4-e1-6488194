import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Product layout demo home page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          ProductBox(
              name: "iPhone",
              description: "iPhone is hi-tech ever in the world now",
              price: 50000,
              image: "iphone.png"),
          ProductBox(
              name: "Pixel",
              description: "Pixel is so amazing",
              price: 100,
              image: "pixel1.png"),
          ProductBox(
              name: "Laptop",
              description: "Laptop is the quipment that can do everthing",
              price: 30000,
              image: "laptop.png"),
          ProductBox(
              name: "Tablet",
              description: "Tablet is the most popular now since 2010",
              price: 15000,
              image: "tablet.png"),
          ProductBox(
              name: "Pendrive",
              description: "Pendrive is the most useful to storage data",
              price: 200,
              image: "pendrive.png"),
          ProductBox(
              name: "Floppy Drive",
              description: "Floppy drive is an outdated storage that use for data storage",
              price: 150,
              image: "floppydrive.png"),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({Key? key, required this.name, required this.description, required this.price, required this.image})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("images/$image"),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(this.name, style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(this.description),
                    Text("Price: \$" + this.price.toString()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
