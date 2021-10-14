import 'package:flutter/material.dart';
 
class Safearea extends StatelessWidget {
  final estilo = TextStyle(fontSize: 20.0, color: Color(0xFF42A5F5));
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.keyboard_return),
          onPressed: (){
            Navigator.pop(context); 
          }
        ),
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(vertical: 20,horizontal: 50),
            reverse: false,
            addAutomaticKeepAlives: false,
            cacheExtent: 100.0,
            children: List.generate(101, (i) => Text('$i - Hola Mundo ', style: estilo,))
          ),
        ),
    );      
  }
}