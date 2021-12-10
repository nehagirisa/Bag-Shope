// import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store_app/material/catagories_card.dart';



class Categories extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
   
    return Container(
      height: 60,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children:  [
       CatagoriesCard(
            // Icon(CupertinoIcons.bag,size: 40,),
            "Bags" ),
        
       CatagoriesCard(
            // Image("aseets/icons/footware.png"),
            "footware"),
         
       CatagoriesCard(
            // Icon(CupertinoIcons.suit_heart_fill,size: 40,),
            "jwellary"),
          
      
      CatagoriesCard(
            // Icon(CupertinoIcons.tag_fill,size: 40,),
            "Dresses"),
       
       CatagoriesCard(
            // Icon(CupertinoIcons.gift,size: 40,),
            "cosmatics"),
          
      ]),
    );
  }
}
