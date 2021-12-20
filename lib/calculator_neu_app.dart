import 'package:flutter/material.dart';

import 'widget/button_set.dart';
import 'widget/neu_container.dart';

const Color colorDark = Color(0xFF374352);
const Color colorLight = Color(0xFFe6eeff);

class CalculatueNeuApp extends StatefulWidget {

  static String enterNamber='0';
  @override
  _CalculatueNeuAppState createState() => _CalculatueNeuAppState();
}
bool darkMode = false;


class _CalculatueNeuAppState extends State<CalculatueNeuApp> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkMode ? colorDark : colorLight,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(


                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(child: ButtonSet.switchMode(),
                    onTap: (){
                      setState(() {
                        darkMode?darkMode=false:darkMode=true;
                      });
                    },),
                    SizedBox(height: 90,),
                    Align(alignment: Alignment.centerRight,
                    child: Text('6.010',style: TextStyle(
                      fontSize: 55,
                      fontWeight: FontWeight.bold,
                      color: darkMode?Colors.white:Colors.red
                    ),),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('=',style: TextStyle(
                          fontSize: 35,
                          color: darkMode?Colors.green:Colors.grey
                        ),),
                        Text('${CalculatueNeuApp.enterNamber}',style: TextStyle(
                            fontSize: 20,
                            color: darkMode?Colors.green:Colors.grey
                        ),)
                      ],
                    ),
                    SizedBox(height: 10,)
                  ],
                )

              ),
              Container(
               child: Column(
                 children: [

                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       ButtonSet.buttonOval(title: 'sin'),
                       ButtonSet.buttonOval(title: 'cos'),
                       ButtonSet.buttonOval(title: 'tan'),
                       ButtonSet.buttonOval(title: '%'),


                     ],
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       _buttonRounded(title :'C',textColor:darkMode?Colors.green:Colors.redAccent),
                       _buttonRounded(title :'('),
                       _buttonRounded(title :')'),

                       _buttonRounded(title :'/',textColor:darkMode?Colors.green:Colors.redAccent),


                     ],
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       _buttonRounded(title :'7'),
                       _buttonRounded(title :'8'),
                       _buttonRounded(title :'9'),

                       _buttonRounded(title :'X',textColor:darkMode?Colors.green:Colors.redAccent),


                     ],
                   ),
                   Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     _buttonRounded(title :'4'),
                     _buttonRounded(title :'5'),
                     _buttonRounded(title :'6'),

                     _buttonRounded(title :'-',textColor:darkMode?Colors.green:Colors.redAccent),


                   ],
                 ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                      _buttonRounded(title :'1'),
                       _buttonRounded(title :'2'),
                       _buttonRounded(title :'3'),

                       _buttonRounded(title :'+',textColor:darkMode?Colors.green:Colors.redAccent),


                     ],
                   ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buttonRounded(title :'0'),
                      _buttonRounded(title :','),
                      _buttonRounded(icon:Icons.backspace_outlined,
                          iconColor:darkMode?Colors.green:Colors.redAccent ),
                      _buttonRounded(title :'=',textColor:darkMode?Colors.green:Colors.redAccent),
                    ],
                  )
                 ],
               ),

              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _buttonRounded({ String? title,double padding =  17, IconData? icon,Color? iconColor,Color? textColor,String? namber}){


    return Padding(
      padding: const EdgeInsets.all(8.0),
      child:   NeuContainer(
        darkMod: darkMode,
        padding: EdgeInsets.all(padding)

        ,borderRadius: BorderRadius.circular(40),
        child:
        Container(
          width: padding*2,
          height:padding*2 ,
          child: Center(
              child: title!= null?Text('$title',style: TextStyle(
                  color:  textColor !=null?textColor: darkMode?Colors.white:Colors.black,
                  fontSize: 30
              ),):
              Icon(icon,color: iconColor,size: 30,)
          ),

        ),),
    );



  }

}
