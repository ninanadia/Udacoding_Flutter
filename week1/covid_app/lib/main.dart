import 'package:covid_app/search.dart';
import 'package:flutter/material.dart';

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
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "COVID 19 NEWS",
          style: TextStyle(color: Colors.red),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(children: <Widget>[
        SizedBox(height: 100),
        Center(
          child: Text(
            "All Cases : 272691",
            style: TextStyle(fontSize: 24, color: Colors.black),
          ),
        ),
        Center(
          child: Text(
            "All Death : 11310",
            style: TextStyle(fontSize: 24, color: Colors.red),
          ),
        ),
        Center(
          child: Text(
            "All Recovered : 90618",
            style: TextStyle(fontSize: 24, color: Colors.green),
          ),
        ),
        Center(
          child: Text(
            "All Active Cases : 170763",
            style: TextStyle(fontSize: 24, color: Colors.orange),
          ),
        ),
        SizedBox(height: 100),
        Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.red),
                  borderRadius: BorderRadius.circular(4)),
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20, right: 20),
                    labelText: "Input a Country",
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 40,
                  width: 150,
                  child: MaterialButton(
                      child: Text(
                        "Search",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      color: Colors.red,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SearchPage()));
                      }),
                ),
                Container(
                  height: 40,
                  width: 150,
                  child: MaterialButton(
                      child: Text(
                        "All Information",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      color: Colors.red,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SearchPage()));
                      }),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 40,
              width: 320,
              child: MaterialButton(
                  child: Text(
                    "Update Of Sri Lanka",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  color: Colors.red,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SearchPage()));
                  }),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                "IMPORTANT",
                style: TextStyle(color: Colors.red),
              ),
            ),
            Center(
              child: Text(
                "Search South Korea as Korea",
              ),
            )
          ],
        )
      ]),
    );
  }
}
