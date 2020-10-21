import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
        SizedBox(height: 60),
        Center(
          child: Text(
            "INDIA",
            style: TextStyle(fontSize: 40, color: Colors.red),
          ),
        ),
        Center(
          child: Text(
            "Cases : 249",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
        Center(
          child: Text(
            "Today Cases : 55",
            style: TextStyle(fontSize: 20, color: Colors.blue),
          ),
        ),
        Center(
          child: Text(
            "Deaths : 5",
            style: TextStyle(fontSize: 20, color: Colors.red),
          ),
        ),
        Center(
          child: Text(
            "Today Deaths : 1",
            style: TextStyle(fontSize: 20, color: Colors.red),
          ),
        ),
        Center(
          child: Text(
            "Recovered : 23",
            style: TextStyle(fontSize: 20, color: Colors.green),
          ),
        ),
        Center(
          child: Text(
            "Active Cases : 221",
            style: TextStyle(fontSize: 20, color: Colors.orange),
          ),
        ),
        Center(
          child: Text(
            "Critical : 0",
            style: TextStyle(fontSize: 20, color: Colors.orange),
          ),
        ),
        Center(
          child: Text(
            "Cases Per Milion : 0",
            style: TextStyle(fontSize: 20, color: Colors.grey),
          ),
        ),
        SizedBox(height: 50),
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
