import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:store_app/body.dart';
import 'package:store_app/constant.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      // backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        // icon: Icons(icon:"assets/icons/back.png",color: Colors.black,),
        icon:Icon(Icons.arrow_back) ,
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
           icon:Icon(Icons.search),
        
          onPressed: () {},
        ),
        IconButton(
        icon:Icon(CupertinoIcons.cart),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
