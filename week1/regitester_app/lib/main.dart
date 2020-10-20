import 'package:flutter/material.dart';
import 'package:regitester_app/pages/profile.dart';
import 'package:regitester_app/pages/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: <Widget>[
          SizedBox(height: 60),
          Image.asset('assets/welcome.png', height: 300),
          SizedBox(height: 20),
          Center(
            child: Text(
              "Halo Selamat Datang",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: Text(
              "Pusing belajar programmming sendirian ?? \nYuk asah skill programmingmu bersama\n Udacoding dari sekarang",
              style: TextStyle(fontSize: 15,),textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 40,
            width: 300,
            child: MaterialButton(
                child: Text(
                  "Register",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                color: Colors.purple,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RegisterPage()));
                }),
          ),
          SizedBox(height: 10),
          Container(
              height: 40,
              width: 300,
              child: FlatButton(
                  child: Text("Profil"),
                  color: Colors.grey[200],
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProfilePage()));
                  })),
        ]),
      ),
    );
  }
}
