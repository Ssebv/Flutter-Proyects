import 'dart:math';

import 'package:flutter/material.dart';
 
class AnimatedContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     
      home: Scaffold(
        body: MiPagina(),
      ),    
    );
  }
}

class MiPagina extends StatefulWidget {
  
  @override
  _MiPaginaState createState() => _MiPaginaState();
}

class _MiPaginaState extends State<MiPagina> {
  @override
  Widget build(BuildContext context) {
    final rnd = new Random();
    final r = rnd.nextInt(255);
    final g = rnd.nextInt(255);
    final b = rnd.nextInt(255);

    final r1 = rnd.nextInt(255);
    final g1 = rnd.nextInt(255);
    final b1 = rnd.nextInt(255);

    final widgth = rnd.nextInt(300)+50;
    final height = rnd.nextInt(300)+50;

    final borderRadius = BorderRadius.circular(rnd.nextInt(200).toDouble());
    final border = Border.all(width: rnd.nextInt(20).toDouble()+2, color: Color.fromRGBO(r1, g1, b1, 1));

    return Scaffold(
      floatingActionButton: 
          FloatingActionButton(
            backgroundColor: Colors.purple,
            child: Icon(Icons.accessibility_new),
            mini: true,
            hoverElevation: 20,       
            onPressed: (){
              setState(() {      
              });
            },
          ),                
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Center(
        child: AnimatedContainer(
          duration: Duration(
            milliseconds: 2500,
          ),
          curve: Curves.easeOutQuint,
          height: height.toDouble(),
          width: widgth.toDouble(),
          decoration: BoxDecoration(
            color: Color.fromRGBO(r, g, b, 1),
            borderRadius: borderRadius,
            border: border
          ),
        ),
      ), 
    );
  }
}