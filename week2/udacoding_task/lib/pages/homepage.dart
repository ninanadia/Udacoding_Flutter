import 'package:flutter/material.dart';
import 'package:udacoding_task/pages/login_page.dart';

class HomePage extends StatefulWidget {
  final String uname;
  final String password;

   HomePage({Key key, @required this.uname, @required this.password}) : super (key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("HomePage"),
        ),
        body: Column(children: <Widget>[
          SizedBox(height: 50),
          Center(child: Text('Selamat Datang ${widget.uname}', style: TextStyle(fontSize:20),)),
          SizedBox(height: 20,),
          Center(child: Text('Password mu adalah : ${widget.password}', style: TextStyle(fontSize: 20),)),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            height: 40,
            width: 200,
            child: MaterialButton(
                child: Text(
                  "Sign Out",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                color: Colors.purple,
                onPressed: () {
                  Navigator.pop(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                }),
          ),
        ]));
  }
}
