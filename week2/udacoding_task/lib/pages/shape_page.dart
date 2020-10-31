import "package:flutter/material.dart";
import 'package:udacoding_task/pages/lingkaran.dart';
import 'package:udacoding_task/pages/persegi.dart';
import 'package:udacoding_task/pages/persegipanjang.dart';

class ShapePage extends StatefulWidget {
  @override
  _ShapePageState createState() => _ShapePageState();
}

class _ShapePageState extends State<ShapePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kalkulator Bangun Datar")),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            height: 40,
            width: 300,
            child: MaterialButton(
                child: Text(
                  "Persegi",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                color: Colors.purple,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Persegi()));
                }),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            height: 40,
            width: 300,
            child: MaterialButton(
                child: Text(
                  "Persegi Panjang",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                color: Colors.purple,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PersegiPanjang()));
                }),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            height: 40,
            width: 300,
            child: MaterialButton(
                child: Text(
                  "Lingkaran",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                color: Colors.purple,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Lingkaran()));
                }),
          ),
        ],
      ),
    );
  }
}
