import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ContadorPage extends StatefulWidget {

  @override
  createState() => _ContadorPageState();
  
}

class _ContadorPageState extends State{
  final TextStyle _estiloTexto = new TextStyle( fontSize: 25);

  int _conteo = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
        elevation: 0.3,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de taps:', style: _estiloTexto),
            Text( '$_conteo',  style: _estiloTexto),
          ],
        )


      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _crearBotones()

      
    );
  }
  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(width:20.0),
        FloatingActionButton( onPressed: _reset, child:Icon(Icons.exposure_zero)),
        Expanded(child: SizedBox()),
        FloatingActionButton( onPressed: _restar, child:Icon(Icons.remove)),
        SizedBox(width: 5.0),
        FloatingActionButton( onPressed: _agregar, child:Icon(Icons.add)),

      ],
    );
  }
  void _agregar(){
    setState(() => _conteo++);
  }
  void _restar(){
    setState(() => _conteo--);
  }
  void _reset(){
    setState(()=> _conteo= 0);
  }

  double width([double d]) => 5;
}