import 'package:flutter/material.dart';


class BasicoPage extends StatelessWidget {
  
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color:Colors.grey);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
       
       

      
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[

            SizedBox(height: 60.0,),     
            _crearImagen(),
            
            _crearTitulo(),
            SizedBox(height: 20.0,),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
              
            
            ],
          ),
        ),
      ),
    );
  }

  Widget _crearImagen(){

    return Container(
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 10.0, offset: Offset(5,5))]
              ),
              child: ClipRRect(
                
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  
                  child: Image(
                      image: NetworkImage('https://images.unsplash.com/photo-1506744038136-46273834b3fb?ixlib=rb-1.2.1&w=1000&q=80',),
                      height: 240.0,
                      
                  ),
                ),  
              ),
            );

  } 
  Widget _crearTitulo(){
    return SafeArea(
      child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                        Text('Lago hermoso', style: estiloTitulo,),
                        SizedBox(height: 7.0,),
                        Text('Se encuentra en el fin del mundo y se siente demasiado placentero',style: estiloSubTitulo,)
                        ],

                      ),
                    ),
                    Icon(Icons.star, color: Colors.red,size: 30.0,),
                    Text('41',style: TextStyle(fontSize: 20.0)),
                  ],
                ),
              ),
    );


  }


  Widget _crearAcciones(){  

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'Call'),
        _accion(Icons.near_me, 'Route'),
        _accion(Icons.share, 'Share'),
        

        
          ],
          

    );
       
      
    
  }

  Widget _accion(IconData icon, String texto){

    return Column(
          children: <Widget>[
            Icon(icon, color: Colors.blue, size: 40.0,),
            SizedBox(height: 5.0),
            Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.blue),)
          ],
    );
  }

  Widget _crearTexto(){

    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0,),
        child: Text(
          'Un lago (del latín: lacus) es un cuerpo de agua generalmente dulce, de una extensión considerable, que se encuentra separado del mar. El aporte de agua a todos los lagos viene de los ríos, de aguas freáticas y precipitación sobre el espejo del agua.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}



