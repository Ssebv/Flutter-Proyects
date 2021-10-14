import 'package:flutter/material.dart';

class  CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards')
      ),
      body: ListView(
        padding:EdgeInsets.all(20.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox( height: 30.0),
          _cardTipo2(),
          SizedBox( height: 30.0),
          _cardTipo1(),
          SizedBox( height: 30.0),
          _cardTipo2(),
          SizedBox( height: 30.0),
          _cardTipo1(),
          SizedBox( height: 30.0),
          _cardTipo2(),
          SizedBox( height: 30.0),

        ]
        
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 8.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),

      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Titulo Targeta'),
            subtitle: Text('Descripción '),

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                onPressed: (){},
                shape: StadiumBorder(),
                child: Text('Cancelar'),
              ),
              FlatButton(
                onPressed: (){},
                 shape: StadiumBorder(),
                child: Text('OK'),
              ),

            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2(){
    final card = Container(
      //clipBehavior: Clip.antiAlias,

      child: Column(
        children: <Widget>[
          FadeInImage.assetNetwork(
            placeholder: 'assets/original.gif' ,
            image:'https://upload.wikimedia.org/wikipedia/commons/c/c8/Untersberg_Mountain_Salzburg_Austria_Landscape_Photography_%28256594075%29.jpeg',
            fadeInDuration: Duration(milliseconds: 200),
            height: 250.0,
            fit: BoxFit.cover,
          ),
          //Image(
            //image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/c/c8/Untersberg_Mountain_Salzburg_Austria_Landscape_Photography_%28256594075%29.jpeg'),
          //),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Paisaje')
          ),
        ],
      ),
    );
    return Container( 
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,

        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)
          )
        ]
        
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );   
  }

}
