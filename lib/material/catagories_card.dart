import 'package:flutter/material.dart';

class CatagoriesCard extends StatefulWidget {
  // final Image image;
  final String name;
   CatagoriesCard(//this.image,
   this.name);

  @override
  _CatagoriesCardState createState() => _CatagoriesCardState();
}

class _CatagoriesCardState extends State<CatagoriesCard> {
  int selectedIndex = 0;

  Object get index => null;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey.shade300,
          boxShadow: [BoxShadow(blurRadius: 5, color: Colors.black87)]),
        width: 100,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            // image,
           
            Text(widget.name,
                style: TextStyle(
                  color: selectedIndex == index ? Colors.black : Colors.black,
                 
                  fontSize: 18,
                )),
          ]),
        ),
      ),
    );
  }
}
