import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:store_app/component/detail_screen.dart';

import 'package:store_app/material/product.dart';
import 'package:store_app/widget/catagories.dart';
import 'package:store_app/widget/item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            "Online Shop",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold,fontSize: 30),
          ),
        ),
        Categories(),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20.0,
                crossAxisSpacing: 20.0,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => ItemCard(
               product: products[index],
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              product: products[index],),
                      ))
              )),
    ))]);
  }
}

