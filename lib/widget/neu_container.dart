import 'package:calculator/calculator_neu_app.dart';
import 'package:flutter/material.dart';

class NeuContainer extends StatefulWidget {

   final bool darkMod;
   final Widget child;
   final BorderRadius borderRadius;
   final EdgeInsetsGeometry padding;
  NeuContainer(
  {
     required this.darkMod,
     required this.child,
     required this.borderRadius,
     required this.padding,


  }

  );

  @override
  _NeuContainerState createState() => _NeuContainerState();
}

class _NeuContainerState extends State<NeuContainer> {
  bool _isPressed = true;


  void _onPointerUp(PointerUpEvent event) {
    setState(() {
      _isPressed = true;
      CalculatueNeuApp.enterNamber+=;

    });
  }

  void _onPointerDown(PointerDownEvent event) {
    setState(() {
      _isPressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: _onPointerDown,
      onPointerUp: _onPointerUp,
      child: Container(
        padding:widget.padding,
        decoration: BoxDecoration(
            color: darkMode ? colorDark : colorLight,
            borderRadius: widget.borderRadius,
            boxShadow: _isPressed

                ? [BoxShadow(
                color:darkMode?Colors.blueGrey.shade600: Colors.blueGrey.shade200,
                offset: Offset(-1.0, -1.0),
                blurRadius: 7.0,
                spreadRadius: 1.0),
              BoxShadow(
                  color:darkMode?Colors.blueGrey.shade600: Colors.blueGrey.shade200,
                offset: Offset(1.0, 1.0),
                blurRadius: 7.0,
                spreadRadius: 1.0)
           ]
                : [
                    BoxShadow(
                        color:darkMode?Colors.black54: Colors.blueGrey.shade400,
                        offset: Offset(4.0, 4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
              BoxShadow(
                  color:darkMode?Colors.black54: Colors.blueGrey.shade400,
                  offset: Offset(1.0, 1.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),

                  ]),
        child: widget.child
      ),
    );
  }
}
