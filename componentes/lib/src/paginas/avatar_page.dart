import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AVATAR PAGE'),
        actions: [
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://i.blogs.es/85aa44/stan-lee/450_1000.jpg'),
              radius: 25.0
            )
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.purple
            )
          )
        ]
      ),
      body: FadeInImage(
        placeholder: AssetImage('imagenes/jar-loading.gif'),
        image: NetworkImage('https://img.europapress.es/fotoweb/fotonoticia_20181113122807_420.jpg'),
        fadeInDuration: Duration(milliseconds: 200)
      )
    );
  }
}