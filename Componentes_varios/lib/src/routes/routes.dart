


import 'package:flutter/material.dart';

import 'package:componentes/src/pages/animated_container.dart';
import 'package:componentes/src/pages/avatar_page.dart';
import 'package:componentes/src/pages/card_page.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/input_page.dart';
import 'package:componentes/src/pages/slider_page.dart';
import 'package:componentes/src/pages/listview_page.dart';
 
 Map<String, WidgetBuilder> getApplicationRoutes(){
 
  return <String, WidgetBuilder>{
        '/'  : (BuildContext contect)=> HomePage(),
        'alert'  : (BuildContext contect)=> AlertPage(),
        'avatar'  : (BuildContext contect)=> AvatarPage(),
        'card':  (BuildContext contect)=> CardPage(),
        'animatedContainer':  (BuildContext contect)=> AnimatedContainerPage(),
        'inputs':  (BuildContext contect)=> InputPage(),
        'slider':  (BuildContext contect)=> SliderPage(),
        'list':  (BuildContext contect)=> ListaPage(),


 };
}