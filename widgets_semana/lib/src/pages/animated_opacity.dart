import 'package:flutter/material.dart';
 
class AnimatedOpacityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: MiPagina(),
    );
  }
}

class MiPagina extends StatefulWidget {
  
  @override
  _MiPaginaState createState() => _MiPaginaState();
}

class _MiPaginaState extends State<MiPagina> {

  double opacidad = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.opacity),
        onPressed: (){
          setState(() {
            opacidad = (opacidad == 1) ? 0 : 1;
          });
        }
      ),
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        child: Wrap(
          direction: Axis.vertical,
          spacing: 50,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Cuadrado(Colors.blue, 1),
            Cuadrado(Colors.deepOrange, opacidad),
            Cuadrado(Colors.pinkAccent, 1),
          ],
        ),
      )
    );
  }
}

class Cuadrado extends StatelessWidget {
  
  final Color color;
  final double opacidad;

  Cuadrado(this.color, this.opacidad);

  @override
  Widget build(BuildContext context) {
    //return Opacity(
    return AnimatedOpacity(
      opacity: opacidad,
      duration: Duration(milliseconds: 700),
      curve: Curves.easeOut,
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: color
        ),
      ),
    );
  }
}