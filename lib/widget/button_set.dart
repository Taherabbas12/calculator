import 'package:flutter/material.dart';

import '../calculator_neu_app.dart';
import 'neu_container.dart';
class ButtonSet{
 static Widget switchMode(){
    return NeuContainer(
        darkMod: darkMode,
        child: Container(
          width: 70,
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.wb_sunny,
                  color:darkMode?Colors.grey:Colors.redAccent),
              Icon(Icons.nightlight_round,
                  color:darkMode?Colors.green:Colors.grey),
            ],),
        ), borderRadius: BorderRadius.circular(40),
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15), addNamber: '',);
  }

static Widget buttonOval({String? title,double padding=16}){
   return Padding(padding:const EdgeInsets.all(10),
     child: NeuContainer(
       darkMod: darkMode,
       padding: EdgeInsets.symmetric(horizontal: padding,vertical: padding/2),
       child: Container(
         width: padding*2,
         child: Center(
           child:Text('$title',style: TextStyle(
               color:darkMode?Colors.white:Colors.black,
               fontSize: 15,
               fontWeight: FontWeight.bold
           ),) ,
         ),

       ),
       borderRadius: BorderRadius.circular(50), addNamber: '',
     ),
   );
 }





}
