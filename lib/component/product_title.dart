 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store_app/material/product.dart';


class ProductTitleWithImage extends StatelessWidget {
  final Product product;

  const ProductTitleWithImage({Key key, this.product}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
   
    return Padding(
              
              padding: const EdgeInsets.all(8.0),
              child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hand Bag",
                    style: Theme.of(context).textTheme.headline6.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                  ),
                  Text(
                    product.title,
                    style: Theme.of(context).textTheme.headline6.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                  ),
                  SizedBox(width: 20),
                  Row(
                   
                    children: [
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(text: "Price\n", style: Theme.of(context)
                                .textTheme
                                .headline6
                                .copyWith(
                                  color: Colors.white,
                                 
                                )),
                        TextSpan(
                            text: "Rs.${product.price}",
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ))
                      ])),
                      
                      SizedBox(width: 20),
                      Expanded(child: Hero(
                        tag:"${ product.title}",
                        child: Image.asset(product.image,
                        height: 280,
                        width:280,
                        ),
                      )
                      

                      )
                    ],
                  )
                ],
              ),
            );
  }
}