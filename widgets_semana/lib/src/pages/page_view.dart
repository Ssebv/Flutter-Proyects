import 'package:flutter/material.dart';
 
class PageViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.keyboard_return),
          disabledElevation: 0.0,
          elevation: 0.0,
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
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      body: Center(
        child: Container(
          width: double.infinity,
          height: 300.0,
          child: PageView(
            controller: PageController(
              viewportFraction: 0.5,
            ),
            //scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            allowImplicitScrolling: false,
            pageSnapping: false,
            children: <Widget>[
              Pagina(Colors.red),
              Pagina(Colors.orange),
              Pagina(Colors.pink),
              Pagina(Colors.purple),
            ],
          ),
        ),
      )
    );
  }
}

class Pagina extends StatelessWidget {

  final Color color;

  const Pagina(this.color);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.only( right: 20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20)
      ),
    );
  }
}