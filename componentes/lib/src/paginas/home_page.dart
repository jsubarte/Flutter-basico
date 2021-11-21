import 'package:flutter/material.dart';

import 'package:componentes/src/proveedores/menu_proveedores.dart';
import 'package:componentes/src/utilidades/icono_string_utils.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes')
      ),
      body: _lista()
    );

  }

  Widget _lista() {
    
    return FutureBuilder(
      future: menuProveedor.cargarDatos(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot){
        return ListView(
          children: _listaItems(snapshot.data, context)
        );
      },
    );
    
  }

  List<Widget> _listaItems(List<dynamic>? datos, BuildContext context) {
    
    final List<Widget> opciones = [];
  
    datos!.forEach((opt) { 
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: (){
          Navigator.pushNamed(context, opt['ruta']);
          /*final route = MaterialPageRoute(
            builder: (context) => AlertPage()
          );
          Navigator.push(context, route);*/
        }
      );
      opciones..add(widgetTemp)
              ..add(Divider());
    });

    return opciones;

  }
  
}