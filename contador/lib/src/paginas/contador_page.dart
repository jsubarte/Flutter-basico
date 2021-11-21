import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{
  
  @override
  State<StatefulWidget> createState() => _ContadorPageState();

}

class _ContadorPageState extends State<ContadorPage>{
  final TextStyle _estiloTexto = new TextStyle(fontSize: 25);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Joel Sanchez'),
        centerTitle: true
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Cantidad de clics: ', style: _estiloTexto),
            Text('$_conteo', style: _estiloTexto)
          ],
        )
      ),
      floatingActionButton: _crearBotones()//,
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat
    );
  }

  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(width: 30.0,),
        FloatingActionButton(child: Icon(Icons.exposure_zero), 
          onPressed: _limpiar
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove), 
          onPressed: _restar
        ),
        SizedBox(width: 15.0),
        FloatingActionButton(child: Icon(Icons.add), 
          onPressed: _sumar
        )
      ]
    );
  }

  void _sumar(){
    setState( () => _conteo++ );
  }

  void _restar(){
    setState( () => _conteo-- );
  }

  void _limpiar(){
    setState( () => _conteo = 0 );
  }

}