import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ['UNO','DOS','TRES','CUATRO','CINCO','SEIS','SIETE','OCHO','NUEVE','DIEZ'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp')
      ),
      body: ListView(
        //children: _crearItems()
        children: _crearItemsCorto()
      )
    );
  }

  /*List<Widget> _crearItems(){
    
    List<Widget> lista = [];
    
    for (String opc in opciones) {
      final tempWidget = ListTile(
        title: Text(opc)
      );
      lista..add(tempWidget)
           ..add(Divider());
    }

    return lista;
  }*/

  List<Widget> _crearItemsCorto(){
    
    return opciones.map((item) => Column(
      children: [
        ListTile( 
          title: Text(item + '!'),
          subtitle: Text('Soy un subtitulo'),
          leading: Icon(Icons.account_balance),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: (){}
        ),
        Divider()
      ],
    ) ).toList();

  }

}