import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store_app/material/product.dart';


class AddToCart extends StatelessWidget {
  const AddToCart({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(children: [
        Container(
          margin: EdgeInsets.only(right: 20),
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              border: Border.all(color: product.color)),
          child: IconButton(
              icon: Icon(CupertinoIcons.cart,color: product.color,),
              onPressed: () {}),
        ),
        Expanded(
          child: SizedBox(
            height: 40,
            width: 80,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(
                        product.color),
                
              ),
              onPressed: () {},
              child: Text("Add to Cart".toUpperCase(),
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
            ),
          ),
        )
      ]),
    );
  }
}
