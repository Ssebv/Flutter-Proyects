import 'package:flutter/material.dart';

class HomePagesTemp extends StatelessWidget {
  final opciones = ['Uno','Dos','Tres','Cuatro','Cinco'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
        
      ),
      body: ListView(
        children: _crearItemsCorta()

      
      ),
    );
      
  
  }

  List<Widget> _crearItemsCorta(){

    return  opciones.map( ( item){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('Hola'),
            leading: Icon(Icons.blur_circular),
            trailing: Icon(Icons.border_bottom),
            onTap: (){
            },
          ),
          Divider()
        ],
      );
    }).toList();

    

  }
}