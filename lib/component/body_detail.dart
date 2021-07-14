import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store_app/component/add_to_cart.dart';
import 'package:store_app/component/color_size.dart';
import 'package:store_app/component/couter_favbutton.dart';
import 'package:store_app/component/descrription.dart';

import 'package:store_app/component/product_title.dart';
import 'package:store_app/material/product.dart';

class BodyDetail extends StatelessWidget {
  final Product product;

  const BodyDetail({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Column(
      children: [
        SizedBox(
          height: size.height,
          child: Stack(
            children: [
              Container(
                  margin: EdgeInsets.only(top: size.height * 0.4),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12, left: 8, right: 8),
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Column(children: [
                    ColorAndSize(product: product),
                    SizedBox(
                      height: 5,
                    ),
                    Description(product: product),
                    SizedBox(
                      height: 5,
                    ),
                    CounterWithFavbutton(),
                    SizedBox(
                      height: 5,
                    ),
                    AddToCart(product: product),
                    SizedBox(
                      height: 5
                    ),
                  ])),
              ProductTitleWithImage(
                product: product,
              )
            ],
          ),
        )
      ],
    ));
  }
}
