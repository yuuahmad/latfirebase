import 'package:flutter/material.dart';
import 'package:latfirebase/page/main_page.dart';

main(List<String> args) {
  return runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: MainPage());
  }
}
