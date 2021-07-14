import 'package:flutter/material.dart';
import 'package:store_app/material/product.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Color"),
              Row(
                children: [
                  ColorDot(
                    color: Color(0xFF3D82AE),
                    isSelected: true,
                  ),
                  ColorDot(
                    color: Color(0xFFD3A984),
                  ),
                  ColorDot(
                    color: Color(0xFFFB7883),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(text: "size\n"),
                  TextSpan(
                      text: "${product.size} cm",
                      style:
                          Theme.of(context).textTheme.headline5)
                ]),
          ),
        )
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    Key key,
    this.color,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, right: 15),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color:isSelected ? color: Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color:  color ,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}