


import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:ui';

class BotonesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(

          children: <Widget>[
            
            _fondoApp(),
            
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _titulos(),

                  _botonesRedondeados()
                  
                ],
              ),
            )
          ],
      ),
      
      bottomNavigationBar: _botonNavigationBar(context),
    );
        

        
  
  }
  Widget _fondoApp(){

    final gradiente= Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          
          begin:FractionalOffset(0.0, 0.6),
          end:FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ]
        ), 
      ),
    );

    final cajaRosa = Transform.rotate(
      angle: -pi/5.0,
      child: Container(
        height: 360,
        width: 360,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80.0),
          gradient: LinearGradient(
          
          colors: [
            Color.fromRGBO(236 , 98, 188, 1.0),
            Color.fromRGBO(241, 142 , 172, 1.0),
          ]
        ), 
          
        ),
      ),
    );
    
    
    
    return Stack(
            children: <Widget>[
              gradiente,
              Positioned(
                top: -100.0,
                child: cajaRosa
              ),

             
            ],
          
        
    
    );

  
  }
  Widget _titulos(){

      return SafeArea(
      child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Texto Texto Texto', style:TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold )),
                SizedBox(height: 10.0,),
                Text('Texto Texto Texto Toxto Texto',style:TextStyle(color: Colors.white, fontSize: 18.0)),
              ],
            ),
          ),
       
    );
  }
  Widget _botonNavigationBar(BuildContext context){
    return Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
              primaryColor: Colors.pinkAccent,
              textTheme: Theme.of(context).textTheme.copyWith(caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))


            ), 
            child: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_today),
                  title: Container(),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.pie_chart_outlined),
                  title: Container(),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.supervised_user_circle),
                  title: Container(),
                ),

              ],
              
              )
          
        
     
    );


  }
  Widget _botonesRedondeados(){

    return Table(
      children: [
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.black87, Icons.border_all, 'Menu' ),
            _crearBotonRedondeado(Colors.yellow, Icons.accessibility_new, 'Accessibility' ),    
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.orange, Icons.add_circle, 'More' ),
            _crearBotonRedondeado(Colors.pink, Icons.add_photo_alternate, 'Photo' ),     
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.tealAccent, Icons.all_inclusive, 'Good' ),
            _crearBotonRedondeado(Colors.brown, Icons.ac_unit, 'Happy' ),      
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.indigo, Icons.account_box, 'Box' ),
            _crearBotonRedondeado(Colors.greenAccent, Icons.wifi, 'Wifi' ),      
          ]
        ),
      ],
    );
  }
  Widget _crearBotonRedondeado(Color color, IconData icon, String text ){

    return Container(
                height: 180.0,
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(62, 66, 107, 0.7),
                  borderRadius: BorderRadius.circular(20.0)
                ),
                child: ClipRRect(
                  child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10.0,sigmaY: 10.0),
                        child: Container(
                          decoration: new BoxDecoration(
                            color: Color.fromRGBO(62, 66, 107, 0.7),
                            borderRadius: new BorderRadius.all(const Radius.circular(20.0))

                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              SizedBox(height: 5.0,),
                              CircleAvatar(
                                backgroundColor: color,
                                radius: 35.0,
                                child: Icon(icon, color: Colors.white,size: 30.0,),
                              ),
                              Text(text, style: TextStyle(color: color)),
                              SizedBox(height: 5.0,)
                            ],
                          ),
                        ),
                      ),
                ),
                    
                  

                   
                
               
              
            
         
        
      
    );
  }
 
  



}


