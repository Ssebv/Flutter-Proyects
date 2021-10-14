
import 'package:flutter/material.dart';

import 'package:animate_do/animate_do.dart';
import 'package:http/http.dart' as http;
import 'package:widgets_semana/models/reqres_model.dart';
 
class FutureBuilderPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
        child: Icon(Icons.keyboard_arrow_left),
        onPressed: (){
          Navigator.pop(context, true);
        },
      ),
      body: Json()
      ),
    );
  }
}
//Mapear la respuesta y obtenerla 
Future<ReqRespuesta> getUsuarios()async{

  final resp= await http.get('https://reqres.in/api/users');
  return reqRespuestaFromJson(resp.body);

}

class Json extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: FutureBuilder(
        future: getUsuarios(),  
        builder: (BuildContext context, AsyncSnapshot<ReqRespuesta> snapshot) {
          //print (snapshot.connectionState);
          if (snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator()) ;
          }else {
            return _ListaUsuarios(snapshot.data.data);
          }
        },
      ),
    );
  }
}

class _ListaUsuarios extends StatelessWidget {
  
  final List<Usuario> usuarios;
  _ListaUsuarios(this.usuarios);
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: usuarios.length,
      itemBuilder: (BuildContext context, int i) {
        final usuario = usuarios[i];
        return FadeInLeft(
          delay: Duration(milliseconds: 200*i),
          child: ListTile(
            title: Text('${ usuario.firstName} ${ usuario.lastName}'),
            subtitle:   Text('${usuario.email}'),
            trailing: Image.network( usuario.avatar),
          ),
        );    
      },
    );
  }
}