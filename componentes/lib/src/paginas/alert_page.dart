import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ALERT PAGE')
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Mostrar Alerta'),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            onPrimary: Colors.white,
            shape: StadiumBorder()
          ),
          onPressed: () => _mostrarAlerta(context)
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.keyboard_arrow_left, color: Colors.purple),
        onPressed: (){
          Navigator.pop(context);
        }
      )
    );
  }

  void _mostrarAlerta(BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Este es el contenido de la caja de alerta'),
              FlutterLogo(
                size: 100.0
              )
            ]
          ),
          actions: [
            TextButton(
              child: Text('CANCELAR'), 
              onPressed: () => Navigator.of(context).pop()
            ),
            TextButton(
              child: Text('ACEPTAR'), 
              onPressed: () => Navigator.of(context).pop()
            )
          ],
        );
      }
    );
  }

}