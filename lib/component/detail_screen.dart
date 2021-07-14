import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store_app/component/body_detail.dart';
import 'package:store_app/material/product.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            backgroundColor: product.color,
            appBar: buildAppBar(context),
            body: BodyDetail(product: product,),);
  }




  Widget buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0.0,
       leading: IconButton(
    icon: Icon(CupertinoIcons.back),
    onPressed: () => Navigator.pop(context),
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
    ),
    SizedBox(width: 10.0,)
          ],
    );
  }
}
