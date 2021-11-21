//import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';


class _MenuProveedor{

  List<dynamic> opciones = [];

  _MenuProveedor(){
    //cargarDatos();
  }

  Future<List<dynamic>> cargarDatos() async {
    
    final resp = await rootBundle.loadString('datos/menu_opts.json');
    
    Map datosMap = json.decode(resp);
    opciones = datosMap['rutas'];
    return opciones;
    
  }

}

final menuProveedor = new _MenuProveedor();