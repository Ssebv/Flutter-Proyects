import 'package:flutter/material.dart';
 
class WrapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Wrap(
            alignment: WrapAlignment.center,
            //su direccion
            direction: Axis.horizontal,
            spacing: 20,
            children: <Widget>[
              Tag('Tierra de Osos',  Colors.blueGrey),
              Tag('Madagascar',  Colors.orange),
              Tag('Rapido y Furioso',  Colors.redAccent),
              Tag('Nemo',  Colors.teal),
              Tag('Los que el agua se llevo',  Colors.blueAccent),
            ],
          ),
        ),
        floatingActionButton: 
            FloatingActionButton(
              child: Icon(Icons.keyboard_return),
              onPressed: (){
                Navigator.pop(context);
              }
            ),   
      ),
    );
  }
}

class Tag extends StatelessWidget {

  final String texto ;
  final Color color;
  
  Tag(this.texto, this.color);
  
  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: CircleAvatar(
        child: Text(this.texto[0], style: TextStyle(color:Colors.black),),
        backgroundColor: Colors.white,
      ),
      label: Text(texto , style: TextStyle(color: Colors.white)),
      backgroundColor: color,
      onDeleted: (){
      },
    );
  }
}