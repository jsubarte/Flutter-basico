import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedContainerPage extends StatefulWidget {

  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();

}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.pink;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Page')
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: _color
          ),
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.keyboard_arrow_right, color: Colors.purple),
        onPressed: () => _modificarContenedor()
      )
    );

  }

  void _modificarContenedor() {
    final rnd = new Random();
    int rndNum1 = rnd.nextInt(300);
    int rndNum2 = rnd.nextInt(300);

    setState(
      () {
        _width = rndNum1.toDouble();
        _height = rndNum2.toDouble();
        _color = Color.fromRGBO(
          rnd.nextInt(255),
          rnd.nextInt(255),
          rnd.nextInt(255),
          rnd.nextDouble() + 0.1
        );
        _borderRadius = BorderRadius.circular(rnd.nextInt(100).toDouble());
      }
    );

  }

}