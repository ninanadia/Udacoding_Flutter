import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
        centerTitle: true,
        actions: [
          new IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                print("on pressed");
              })
        ],
      ),
      body: ListView(children: <Widget>[
        profileSection(),
      ]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
    );
  }
}

Widget profileSection() {
  return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Stack(children: <Widget>[
        Column(
          children: [
            Center(
                child: CircleAvatar(
              radius: 70,
            )),
            SizedBox(height: 10),
            Text(
              "Nina Nadia SH",
              style: TextStyle(fontSize: 15),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(60, 5, 60, 0),
                child: Divider(
                  color: Colors.grey,
                )),
            SizedBox(height: 20),
            Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Username",
                      style: TextStyle(fontSize: 10, color: Colors.grey)),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("ninanadia", style: TextStyle(fontSize: 15)),
                ),
                Divider(color: Colors.grey),
              ],
            ),
            Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Email",
                      style: TextStyle(fontSize: 10, color: Colors.grey)),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("ninanadiasyafitrihusein@gmail.com",
                      style: TextStyle(fontSize: 15)),
                ),
                Divider(color: Colors.grey),
              ],
            ),
            CheckboxListTile(
              contentPadding: EdgeInsets.symmetric(),
              title: Text('Available To Mentor'),
              value: true,
              activeColor: Colors.blue,
              onChanged: (value) {},
            ),
            CheckboxListTile(
              contentPadding: EdgeInsets.symmetric(),
              title: Text('Needs Mentoring'),
              value: true,
              activeColor: Colors.blue,
              onChanged: (value) {},
            ),
            Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Email",
                      style: TextStyle(fontSize: 10, color: Colors.grey)),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("ninanadiasyafitrihusein@gmail.com",
                      style: TextStyle(fontSize: 15)),
                ),
                Divider(color: Colors.grey),
              ],
            ),
            Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Bio",
                      style: TextStyle(fontSize: 10, color: Colors.grey)),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Hobbist teenage programmer",
                      style: TextStyle(fontSize: 15)),
                ),
                Divider(color: Colors.grey),
              ],
            ),
            Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Slack username",
                      style: TextStyle(fontSize: 10, color: Colors.grey)),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("ninanadia", style: TextStyle(fontSize: 15)),
                ),
                Divider(color: Colors.grey),
              ],
            ),
            Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Occupation",
                      style: TextStyle(fontSize: 10, color: Colors.grey)),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("ninanadia", style: TextStyle(fontSize: 15)),
                ),
                Divider(color: Colors.grey),
              ],
            ),
          ],
        ),
      ]));
}
