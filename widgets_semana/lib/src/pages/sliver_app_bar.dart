import 'dart:math';

import 'package:flutter/material.dart';
 
class SliverAppBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        floatingActionButton:FloatingActionButton(
            child: Icon(Icons.keyboard_return),
            mini: true,
            elevation: 0.5,
            backgroundColor: Colors.deepOrange[200],
            onPressed: (){
              Navigator.pop(context);
            }
        ),   
        body: Principal()
        ),
    );
  }
}

class Principal extends StatelessWidget {

  final rnd = new Random();

  final List<Color> colores=[
    Colors.red,
    Colors.yellow,
    Colors.tealAccent,
    Colors.lightGreen,
    Colors.lime,
    Colors.pinkAccent,
    Colors.purple,
    Colors.indigo,
    Colors.green,
    Colors.cyan,
    Colors.brown,
  ];
  @override
  Widget build(BuildContext context) {

    final List<Widget>items= List.generate(100, (i) => Container(
      width: double.infinity,
      height: 150,
      color: colores[rnd.nextInt(this.colores.length)],
    ));
    return Center(
      child:CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
            pinned: true,
            title: Text('Sliver AppBar',style: TextStyle(fontSize: 20),textWidthBasis: TextWidthBasis.longestLine,),
            centerTitle: true,
            expandedHeight: 200,
            flexibleSpace: Image.network('https://laderasur.com/content/uploads/2017/01/Captura-de-pantalla-2017-01-06-a-las-1.59.49-p.m..png', fit: BoxFit.cover,),
          ),
          SliverList(
            delegate: SliverChildListDelegate(items),
          )
        ],
      ),   
    );
  }
}