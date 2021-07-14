import 'package:flutter/material.dart';

import 'cart_counter.dart';

class CounterWithFavbutton extends StatelessWidget {
  const CounterWithFavbutton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCounter(),
        Container(
          padding:EdgeInsets.all(8.0),
          // width: 32,
          // height: 32,
          // decoration: BoxDecoration(
          //   color: Colors.red[200],
          //   shape: BoxShape.circle,
          // ),
          child: Icon(Icons.favorite,
          color: Colors.pink,)
        )
        ,
      ],
    );
  }
}