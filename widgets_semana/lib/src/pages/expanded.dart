import 'package:flutter/material.dart';

class ExpandedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
            
      home: Scaffold(
          body: Row(
            children: <Widget>[
              Cuadrado(Colors.pink),
              Expanded(
                //Se van a ignorar la propiedades adaptandoce al espacio posible en la pantalla 
                child: Cuadrado(Colors.teal),
                flex: 2,
              ),
              Expanded(
                child: Cuadrado(Colors.yellowAccent),
                flex: 3,
              ),
              Cuadrado(Colors.brown),
            ],
          ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.keyboard_return),
          onPressed: (){
            Navigator.pop(context);
          }
        ), 
      ),     
    );
  }
}

class Cuadrado extends StatelessWidget {
 
  final Color color;
  //Establecer una pripiedad y asignarcela a la propiedad anterior
  Cuadrado(this.color);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 100.0, horizontal: 20.0),
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
        color: this.color,       
      ),
    );
  }
}