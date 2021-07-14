import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:flutter_svg/svg.dart';
import 'package:store_app/body.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    // loadData();
  }

  // loadData() async {
  //   final catalogJson =
  //       await rootBundle.loadString("assets/files/product.json");
  //   final decodedData = jsonDecode(catalogJson);
  //   var productsData = decodedData["products"];
  //   print(productsData);

  //   CatalogModel.items = List.from(productsData)
  //       .map<Item>((item) => Item.fromJson(item))
  //       .toList();
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Body(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
            color: Colors.black,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.search),
              color: Colors.black,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.cart),
              color: Colors.black,
            )
          ],
        ),

      
        
        
        
        );
  }
}
