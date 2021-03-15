import 'package:flutter/material.dart';

class BacaData extends StatefulWidget {
  @override
  _BacaDataState createState() => _BacaDataState();
}

class _BacaDataState extends State<BacaData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Baca Data'),
        centerTitle: true,
      ),
    );
  }
}
