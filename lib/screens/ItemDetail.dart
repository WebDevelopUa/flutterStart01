import 'package:flutter/material.dart';

class ItemDetail extends StatelessWidget {
String? item;

ItemDetail({this.item});

  Widget build(conext) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
      ),
      body: Text('Detail screen $item'),
    );
  }
}
