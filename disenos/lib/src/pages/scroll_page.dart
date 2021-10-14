import 'dart:ui';

import 'package:flutter/material.dart';


class ScrollPage extends StatelessWidget {
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _pagina1(),
          _pagina2(),
        ],
        
      ),
        
    );
      
      
    
  }
  Widget _pagina1(){

    return  Stack(
      children: <Widget>[
        _colorFondo(),
        _imagenFondo(),
        _textos(),


      ],
    );

    



  }
  Widget _pagina2(){
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _botonCentro(),

      ],
      
      
        

    

    );
  }
  Widget _colorFondo(){

    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),


    );


  }
  Widget _imagenFondo(){

    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/scroll.png'),
        fit: BoxFit.cover,
      ),

    );


  }
  Widget _textos(){
    //final estiloTexto =TextStyle(color: Colors.white, fontSize: 50.0,);
    final estiloTexto2 =  TextStyle(
        fontSize: 50.0,
        foreground: Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2
          ..color = Colors.white);
    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0,),
          
           
          Center(
            child: Text(' 11°',style: estiloTexto2, textScaleFactor: 1.5 , textAlign: TextAlign.center, )),
          SizedBox(height: 20.0,),
          Center(child: Text('Viernes 31 de Julio ',style: estiloTexto2,textAlign: TextAlign.center,)),
          Expanded(child: Container(),

          ),
          Icon(Icons.keyboard_arrow_down, size: 70.0, color: Colors.white,)






        ],

      ),
    );
  }
  Widget _botonCentro(){
    return Container(
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.white54,
          textColor: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            child: Text('Bienvenidos', style: TextStyle(fontSize: 25),),
          ),
          onPressed: (){},
          ),
      ),
    );
      
      
      
    


    }


  

}