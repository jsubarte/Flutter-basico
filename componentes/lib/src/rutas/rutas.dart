import 'package:flutter/material.dart';

import 'package:componentes/src/paginas/alert_page.dart';
import 'package:componentes/src/paginas/avatar_page.dart';
import 'package:componentes/src/paginas/home_page.dart';
import 'package:componentes/src/paginas/card_page.dart';
import 'package:componentes/src/paginas/animated_container.dart';
import 'package:componentes/src/paginas/input_page.dart';
import 'package:componentes/src/paginas/slider_page.dart';
import 'package:componentes/src/paginas/listview_page.dart';

Map<String,WidgetBuilder> getApplicationRoutes() =>
  <String,WidgetBuilder>{
    '/' : (BuildContext context) => HomePage(),
    'alert' : (BuildContext context) => AlertPage(),
    'avatar' : (BuildContext context) => AvatarPage(),
    'card' : (BuildContext context) => CardPage(),
    'animatedContainer' : (BuildContext context) => AnimatedContainerPage(),
    'inputs' : (BuildContext context) => InputPage(),
    'slider' : (BuildContext context) => SliderPage(),
    'listview' : (BuildContext context) => ListviewPage()
  };