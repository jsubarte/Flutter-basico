// PROPIOS DE FLUTTER O TERCEROS
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

// MIS ARCHIVOS
import 'package:componentes/src/rutas/rutas.dart';
//import 'package:componentes/src/paginas/card_page.dart';

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes App',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', 'US'), // English, no country code
        Locale('es', 'ES') // Spanish, no country code
      ],
      //home: HomePage()
      initialRoute: '/',
      routes: getApplicationRoutes()//,
      /*onGenerateRoute: (config){
        return MaterialPageRoute(builder: (BuildContext context) => CardPage());
      },*/
    );
  }

}