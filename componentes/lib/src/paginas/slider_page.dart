import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valor = 100.0;
  bool _blockCheck = false;
  bool _blockSwitch = false;

  @override
  Widget build(BuildContext context) =>
    Scaffold(
      appBar: AppBar(
        title: Text('Sliders')
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            _crearSlider(),
            Divider(),
            _crearCheckbox(),
            Divider(),
            _crearSwitch(),
            Divider(),
            Expanded(
              child: _crearImagen()
            )
          ]
        )
      )
    );

  Widget _crearSlider() =>
    Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de Imagen',
      value: _valor,
      min: 10.0,
      max: 400.0,
      onChanged: (_blockCheck || _blockSwitch) ? null : (dato) => setState( () => _valor = dato )
    );

  Widget _crearImagen() =>
    Image(
      image: NetworkImage('https://1000marcas.net/wp-content/uploads/2019/11/Logo-Batman-.png'),
      width: _valor,
      fit: BoxFit.contain
    );

  Widget _crearCheckbox() =>
    CheckboxListTile(
      title: Text('Bloquear Slider'),
      value: _blockCheck, 
      onChanged: (check) => setState( () => _blockCheck = check! )
    );

  Widget _crearSwitch() =>
    SwitchListTile(
      title: Text('Bloquear Slider'),
      value: _blockSwitch, 
      onChanged: (swit) => setState( () => _blockSwitch = swit )
    );

}