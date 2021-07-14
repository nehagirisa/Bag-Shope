// import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store_app/material/catagories_card.dart';


// class Categories extends StatefulWidget {

//   @override
//   _CategoiresState createState() => _CategoiresState();
// }

// class _CategoiresState extends State<Categories> {
//   List<String> catagories = ["Hand Bag","Jwellary","Footware","Cosmatics"];
//   int selectedIndex = 0;

//   get categories => null;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: SizedBox(
//           height: 25,
//           child: ListView.builder(
//             scrollDirection: Axis.horizontal,
//             itemCount: catagories.length,
//             itemBuilder: (context, index) => buildcategories(index),
//           )),
//     );
//   }

//   Widget buildcategories(int index) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 0.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//         Text(
//           categories[index],
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             color: selectedIndex == index ? Colors.black26: Colors.black38),
//         ),
//         Container(
//           margin: EdgeInsets.only(top: 0.0/4),
//         height: 2,
//         width:30 ,
//         color: selectedIndex == index ? Colors.black : Colors.transparent,
//         ),
//       ]),
//     );
//   }
// }

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
