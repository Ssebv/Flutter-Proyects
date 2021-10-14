import 'package:flutter/material.dart';
 
class FloatingActionButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: MiPagina(),
    );
  }
}

class MiPagina extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BotonFlotante(),
      bottomNavigationBar: Navegacion(),

    );
  }
}

class Navegacion extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
      BottomNavigationBarItem(icon: Icon(Icons.search),title: Text('Buscar')),
      BottomNavigationBarItem(icon: Icon(Icons.security),title: Text('Seguridad')),
      ]
    );
  }
}

class BotonFlotante extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      elevation: 0,
      highlightElevation: 0,
      onPressed: (){
        //print('Hola Mundo');
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> MiPagina2()));
      }
    );
  }
}

class MiPagina2 extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: BotonFlotante(),
      bottomNavigationBar: Navegacion(),
    );
  }
}

class BotonFlotante2 extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(   
      child: Icon(Icons.add_a_photo),
      elevation: 0,
      highlightElevation: 0,
      onPressed: (){
        //print('Hola Mundo');
      } 
    );
  }
}