import 'package:flutter/material.dart';
import 'package:store_app/material/product.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({
    Key key,
    this.press,
    this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(0.0),
              //  width: 160,
              //  height: 160,
          
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Hero(
                tag:"${ product.title}",
                child: Image.asset(product.image)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: Text(
              product.title,
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Text("Rs.${product.price}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ))
        ],
      ),
    );
  }
}
