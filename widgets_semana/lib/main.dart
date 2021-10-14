import 'package:flutter/material.dart';

import 'package:widgets_semana/src/pages/alert_page.dart';
import 'package:widgets_semana/src/pages/animated_container.dart';
import 'package:widgets_semana/src/pages/animated_opacity.dart';
import 'package:widgets_semana/src/pages/expanded.dart';
import 'package:widgets_semana/src/pages/fade_in_image.dart';
import 'package:widgets_semana/src/pages/fade_transition.dart';
import 'package:widgets_semana/src/pages/floating_action_button.dart';
import 'package:widgets_semana/src/pages/future_builder.dart';
import 'package:widgets_semana/src/pages/home_page.dart';
import 'package:widgets_semana/src/pages/inherited_widget.dart';
import 'package:widgets_semana/src/pages/page_view.dart';
import 'package:widgets_semana/src/pages/safe_area.dart';
import 'package:widgets_semana/src/pages/sliver_app_bar.dart';
import 'package:widgets_semana/src/pages/sliver_list_grid.dart';
import 'package:widgets_semana/src/pages/stream_builder.dart';
import 'package:widgets_semana/src/pages/table.dart';
import 'package:widgets_semana/src/pages/wrap.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      initialRoute: 'home',
      routes: <String, WidgetBuilder>{
        
        'home':                 (BuildContext context)=> HomePage(),
        'alert':                (BuildContext context)=> AlertPage(),
        'safeArea':             (BuildContext context)=> Safearea(),
        'expanded' :            (BuildContext context)=> ExpandedPage(),
        'wrap' :                (BuildContext context)=> WrapPage(),
        'animatedContainer' :   (BuildContext context)=> AnimatedContainerPage(),
        'animatedOpacity' :     (BuildContext context)=> AnimatedOpacityPage(),
        'futureBuilder' :       (BuildContext context)=> FutureBuilderPage(),
        'fadeTransition' :      (BuildContext context)=> FadeTransitionPage(),
        'floatingActionButton': (BuildContext context)=> FloatingActionButtonPage(),
        'pageView' :            (BuildContext context)=> PageViewPage(),
        'table' :               (BuildContext context)=> TablePage(),
        'sliverAppBar':         (BuildContext context)=> SliverAppBarPage(),
        'sliverListGrid':       (BuildContext context)=> SliverListGridPage(),
        'fadeInImage':          (BuildContext context)=> FadeInImagePage(),
        'streamBuilder':        (BuildContext context)=> StreamBuilderPage(),
        'inheritedWidget':      (BuildContext context)=> InheritedWidgetPage(),

      },    
    );
  } 
}

