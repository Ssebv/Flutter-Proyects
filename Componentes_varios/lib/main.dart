import 'package:flutter/material.dart';
import 'package:componentes/src/routes/routes.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:componentes/src/pages/alert_page.dart';



void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [

       GlobalMaterialLocalizations.delegate,
       GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'), // English, no country code
        const Locale('es', 'ES'), // Hebrew, no country code
        
    
      ],
      //home:  HomePage()
      initialRoute: '/',
      routes:  getApplicationRoutes(),
      onGenerateRoute: ( settings ){
        print('Ruta');
        return MaterialPageRoute(
          builder: ( BuildContext context ) => AlertPage()
        );
      },

      
    );
  }
}