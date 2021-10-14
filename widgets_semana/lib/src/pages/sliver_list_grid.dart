import 'dart:math';

import 'package:flutter/material.dart';
 
class SliverListGridPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(    
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton:FloatingActionButton(
            child: Icon(Icons.keyboard_return),
            mini: true,
            elevation: 0.5,
            backgroundColor: Colors.deepOrange[200],
            onPressed: (){
              Navigator.pop(context);
            }
        ),
        body: PrincipalPage(),

      ),
    );
  }
}

class PrincipalPage extends StatelessWidget {

  final List<Widget> items = List.generate(25, (i) => Cuadrado(i));
  
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          centerTitle: true,
          expandedHeight: 150.0,
          floating: true,  
          title: Text('Sliver Grid',style: TextStyle(fontSize: 20),textWidthBasis: TextWidthBasis.longestLine,),   
          flexibleSpace: Image.network('https://laderasur.com/content/uploads/2017/01/Captura-de-pantalla-2017-01-06-a-las-1.59.49-p.m..png', fit: BoxFit.cover,),
        ),
        SliverGrid.count(
          crossAxisCount: 4,
          children: items,
          mainAxisSpacing: 1,
          crossAxisSpacing: 1,
          childAspectRatio: 2,
        ),
        SliverAppBar(
          centerTitle: true,
          expandedHeight: 150.0,
          floating: true,
          pinned: true,
          title: Text('Sliver List',style: TextStyle(fontSize: 20),textWidthBasis: TextWidthBasis.longestLine,),   
          flexibleSpace: Image.network('https://1.bp.blogspot.com/_NIsy0d8Bc-I/TBkn9z9W6AI/AAAAAAAAADk/cMzmlUmQNz4/s1600/paisajes-caida-oregon.jpg', fit: BoxFit.cover,),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, i){
            return items[i];
          },
          //maximo de arreglos
          childCount: items.length,
          )
        ),
      ],
    );
  }
}

class Cuadrado extends StatelessWidget {

  final int index;

  const Cuadrado(this.index);
  
  @override
  Widget build(BuildContext context) {
    final rnd = new Random();

    final r = rnd.nextInt(255);
    final g= rnd.nextInt(255);
    final b = rnd.nextInt(255);

    return Container(
      child: Center(
        child: Text('$index', style: TextStyle(color: Colors.white),),
      ),
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color:Color.fromRGBO(r, g, b, 1),
      ),
    );
  }
}