import 'package:flutter/material.dart';
import 'package:hero_t/details.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (ctx) => Details()));
          },
          child: Container(
            height: 200,
            width: 200,
            child: Hero(
              tag: 'image',
              child: Image.network(
                'https://images.unsplash.com/photo-1593642533144-3d62aa4783ec?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
