
import 'package:flutter/material.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:componentes/src/providers/menu_provider.dart';

class  HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes')
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: ( context, AsyncSnapshot <List<dynamic>> snapchot){
        
        return ListView(
          children: _listaItems(snapchot.data, context ),
        );
      },
    );
    //print(menuProvider.opciones);
    //menuProvider.cargarData().then( (opciones){
    
    // return ListView(
      // children: _listaIems(),
    // );
  }

  List<Widget>_listaItems(List<dynamic> data, BuildContext context ) {
    final List<Widget> opciones = [];
  //if (data == null ) { return [];}
    data.forEach( (opt){

      final widgetTemp = ListTile(
        title: Text( opt['texto']),
        leading: getIcon( opt ['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: (){
          Navigator.pushNamed(context, opt['ruta']);
          
          //final route= MaterialPageRoute(
            //builder:(context)=> AlertPage()

            
          //);
          //Navigator.push(context, route);

        },
      );
      opciones..add(widgetTemp)
              ..add( Divider());
    });
    return opciones;
  }
}