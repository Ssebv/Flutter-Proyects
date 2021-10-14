

import 'package:flutter/material.dart';



class AlertPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alerte Page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Mostrar Alerta'),
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: () =>_mostrarAlert(context),




        ), 
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.add_location),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
    
  }
  void _mostrarAlert(BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context){

        return AlertDialog(
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0)) ,
          title: Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Esto es un contenido'),
              FlutterLogo(size: 100.0)

            ],
          ),
          actions: <Widget>[
            FlatButton(
              onPressed:()=>Navigator.of(context).pop(), 
              child: Text('OK'),
            ),
            FlatButton(
              onPressed: ()=>Navigator.of(context).pop(),  
              child: Text('Cancelar'),
            ),


          ],

        );


      }

    );
  }
}