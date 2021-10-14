import 'package:flutter/material.dart';
 
class FadeTransitionPage extends StatefulWidget {

  @override
  _FadeTransitionPageState createState() => _FadeTransitionPageState();
}

class _FadeTransitionPageState extends State<FadeTransitionPage> with SingleTickerProviderStateMixin{
  AnimationController controller;
  Animation<double> opacidad;

  @override
  void initState() {

    controller = new AnimationController(vsync: this, duration: Duration(milliseconds: 1500));
    opacidad = new Tween(begin: 0.0, end: 1.0).animate(controller);
    controller.forward();
    super.initState();

  }

  @override
  void dispose() {

    controller.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Loco',
      home: Scaffold(
        
        floatingActionButton: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              child: Icon(Icons.keyboard_capslock),
              mini: true,
              backgroundColor: Colors.redAccent,
              onPressed: (){
                controller.forward(from: 0.0);
              }
            ),
            SizedBox(width: 10,),
            //FloatingActionButton(
              //child: Icon(Icons.keyboard_arrow_left),
              
              //onPressed: (){
                //Navigator.pop(context);
              //}
            //),
          ],
        ),
        body: Center(
          child: FadeTransition(
            opacity: opacidad,
            child: Cuadrado()
          ),
        ),
      ),
    );
  }
}

class Cuadrado extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.red,
        ),  
      ),
    );
  }
}