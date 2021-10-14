
import 'package:flutter/material.dart';
 

 
class FadeInImagePage extends StatelessWidget {
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
        
        
        body: Principal(),
      ),
    );
  }
}

class Principal extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) { 
            return FadeInImage(
                fadeInDuration: Duration(milliseconds: 500),
                //fadeInCurve: Curves.bounceInOut,
                placeholder: AssetImage('assets/giphy.gif'),
                image : NetworkImage('https://source.unsplash.com/collection/$index'),

            );
          },
        )
      ),
    );
  }
}

