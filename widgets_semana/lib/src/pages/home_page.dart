import 'package:flutter/material.dart';

import 'package:widgets_semana/src/provider/menu_provider.dart';
import 'package:widgets_semana/src/utils/icono_string_util.dart';
 
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   
      Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Widgets de la semana', 
          style: TextStyle(fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis,),
          centerTitle: true,
        ),
        body:_lista(),    
      );
  }

  Widget _lista(){
    //menuProvider.cargarData().then((opciones){
    //});
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return  ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic>data, BuildContext context){
    final List<Widget> opciones=[];
    data.forEach((opt) { 
      final widgetTemp = ListTile(
        title: Text(opt['texto'], style: TextStyle(fontStyle: FontStyle.italic),overflow: TextOverflow.clip,),
        leading: getIcon(opt['icon']),contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),selected: false,onLongPress: (){},
        trailing: Icon(Icons.keyboard_arrow_right, color:Colors.blueAccent),
        onTap: (){
          Navigator.pushNamed(context, opt['ruta']);
          //final route= MaterialPageRoute(
            //builder: (context){
              //return AlertPage();
            //}
          //);
          //Navigator.push(context, route);
        },
      );
      opciones..add(widgetTemp)
              ..add(Divider());
    });
    return opciones;
    
  }
}