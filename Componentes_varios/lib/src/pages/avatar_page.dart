import 'package:flutter/material.dart';


class AvatarPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://www.larazon.es/resizer/HyCo4xCtUdGaJg5h3clZ-XFqmfI=/1260x840/smart/filters:format(webp)/arc-photo-larazon.s3.amazonaws.com/eu-central-1-prod/public/Q7ZT5RMGBBE7JGA5FQGFYHSFPE.jpg'),
            
         
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,

            ),
          ),
         
          
        ],
      ),
      body: Center(
        child:FadeInImage.assetNetwork(
               placeholder: 'assets/original.gif',
               image: 'https://cronicaglobal.elespanol.com/uploads/s1/50/04/19/5/rick-morty-series-netflix.jpeg',
               fadeInDuration: Duration(milliseconds: 200),
                       ),
      ) ,
    );
  }
}
               
 