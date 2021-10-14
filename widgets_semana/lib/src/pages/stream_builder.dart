import 'dart:async';

import 'package:flutter/material.dart';
 

 
class StreamBuilderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Principal(),
      
    );
  }
}

class Principal extends StatefulWidget {

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  final colorStream = new StreamController<Color>();
  int counter = -1;
  final List<Color> colorList = [
    Colors.blue,
    Colors.brown,
    Colors.cyan,
    Colors.deepPurple,
    Colors.green,
    Colors.indigo,
    Colors.lime,

  ];
  @override
  void dispose() {
    colorStream.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StreamBuilder(
          stream: colorStream.stream,
          //initialData: initialData ,
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot){

            if (!snapshot.hasData){

              return LoadingWidget();
            }

            if(snapshot.connectionState == ConnectionState.done){
              return Text('Fin del Stream');
            }

            return Container(
              height: 150,
              width: 150,
              color: snapshot.data
              
            );

          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.color_lens),
        onPressed: (){
          counter++;
          if(counter < colorList.length){
            colorStream.sink.add(colorList[counter]);
          }else{
            colorStream.close();

          }
        }
      ),
    );
  }
}

class LoadingWidget extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Esperando datos'),
        SizedBox(height: 20.0),
        CircularProgressIndicator()

      ],
    );
  }
}