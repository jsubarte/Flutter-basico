import 'dart:async';

import 'package:flutter/material.dart';

class ListviewPage extends StatefulWidget {

  @override
  _ListviewPageState createState() => _ListviewPageState();

}

class _ListviewPageState extends State<ListviewPage> {
  
  ScrollController _scrollCtrl = new ScrollController();

  List<int> _listNum = [];
  int _ultimoItem = 0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _agregarImagenes();

    _scrollCtrl.addListener(() { 
      if(_scrollCtrl.position.pixels == _scrollCtrl.position.maxScrollExtent){
        _agregarImagenes();
        _fetchData();
      }
    });

  }

  @override
  void dispose() {
    super.dispose();
    _scrollCtrl.dispose();
  }

  @override
  Widget build(BuildContext context) =>
    Scaffold(
      appBar: AppBar(
        title: Text('ListView')
      ),
      body: Stack(
        children: [
          _crearLista(),
          _crearLoading()
        ]
      )
    );

  Widget _crearLista() =>
    RefreshIndicator(
      onRefresh: _getPag1,
      child: ListView.builder(
        controller: _scrollCtrl,
        itemCount: _listNum.length,
        itemBuilder: (BuildContext context, int index){
          final _imagen = _listNum[index];
          return FadeInImage(
            placeholder: AssetImage('imagenes/jar-loading.gif'),
            image: NetworkImage('https://picsum.photos/id/$_imagen/200/300')
          );
        }
      ),
    );

  void _agregarImagenes(){
    for (int i = 1; i < 10; i++) {
      _ultimoItem++;
      _listNum.add(_ultimoItem);
    }

    setState(() {});

  }

  Future _fetchData() async {

    _isLoading = true;
    setState( () {} );

    final duracion = new Duration(seconds: 2);
    return new Timer(duracion, _respHTTP);

  }

  void _respHTTP() {
    _isLoading = false;

    _scrollCtrl.animateTo(
      _scrollCtrl.position.pixels + 100,
      curve: Curves.fastOutSlowIn,
      duration: Duration(milliseconds: 250)
    );

    _agregarImagenes();
  }

  Widget _crearLoading() {
    
    if (_isLoading){
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator()
            ]
          ),
          SizedBox(height: 15.0)
        ]
      ); 
    }
    else{
      return Container();
    }

  }

  Future<Null>_getPag1() async {
    
    final duracion = new Duration(seconds: 2);
    
    new Timer(duracion, (){
      _listNum.clear();
      _ultimoItem++;
      _agregarImagenes();
    });

    return Future.delayed(duracion);
    
  }

}