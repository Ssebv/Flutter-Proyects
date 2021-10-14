import 'package:flutter/material.dart';
 

 
class InheritedWidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        body: Principal(),
      ),
    );
  }
}

class Principal extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Cuadrado(),
    );
  }
}

class Cuadrado extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color:Colors.red
      ),
    );
  }
}


class Cuadrad2 extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color:Colors.blue
      ),
    );
  }
}
