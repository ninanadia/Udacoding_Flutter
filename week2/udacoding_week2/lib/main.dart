import 'package:flutter/material.dart';
import 'package:udacoding_week2/pages/calculator_age_page.dart';
import 'package:udacoding_week2/pages/login_page.dart';
import 'package:udacoding_week2/pages/shape_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Udacoding Task',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Udacoding Task"),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 20),
          Center(child: Text("Task Week 2", style: TextStyle(fontSize: 25))),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            height: 40,
            width: 300,
            child: MaterialButton(
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                color: Colors.purple,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                }),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            height: 40,
            width: 300,
            child: MaterialButton(
                child: Text(
                  "Kalkulator Umur",
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
                          builder: (context) => CalculatorPage()));
                }),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            height: 40,
            width: 300,
            child: MaterialButton(
                child: Text(
                  "Bangun Datar", 
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                color: Colors.purple,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ShapePage()));
                }),
          ),
        ],
      ),
    );
  }
}
