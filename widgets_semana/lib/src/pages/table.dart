import 'package:flutter/material.dart';
  
class TablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
              child: Icon(Icons.keyboard_return),
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
        child:Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
          defaultColumnWidth: FixedColumnWidth(120),
          //Columna Mas Importante
          //columnWidths: {
            //1:FractionColumnWidth(0.4),
          //},
          border: TableBorder.all(),
          children: [
            TableRow(
              children: [
               RectanguloMedium(),
               RectanguloLarge(),
               RectanguloSmall(),
              ]
            ),
            TableRow(
              children: [
               RectanguloLarge(),
               RectanguloSmall(),
               RectanguloMedium(),
              ]
            ),
            TableRow(
              children: [
               RectanguloMedium(),
               RectanguloSmall(),
               RectanguloLarge(),
              ]
            ),
          ]
        )
      )
    );
  }
}

class RectanguloLarge extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 200,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.purple,
      ),
    );
  }
}

class RectanguloMedium extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 150,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.red,
      ),
    );
  }
}

class RectanguloSmall extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 100,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.yellowAccent,
      ),
    );
  }
}