import 'package:flutter/material.dart';
import 'package:regitester_app/pages/profile.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _obscureText = true;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  bool _val1 = false;
  bool _val2 = false;
  bool _val3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Register"),
        ),
        body: ListView(children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(height: 10),
              Center(
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(4)),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20, right: 20),
                      hintText: "name",
                      labelText: "Name",
                      hintStyle: TextStyle(
                        color: Colors.black,
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none),
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(4)),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20, right: 20),
                      hintText: "username",
                      labelText: "Username",
                      hintStyle: TextStyle(
                        color: Colors.black,
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none),
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(4)),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20, right: 20),
                      hintText: "email",
                      labelText: "Email",
                      hintStyle: TextStyle(
                        color: Colors.black,
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none),
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(4)),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20, right: 20),
                      hintText: "password",
                      labelText: "Password",
                      hintStyle: TextStyle(
                        color: Colors.black,
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      suffixIcon: IconButton(
                          icon: Icon(_obscureText
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () {
                            _toggle();
                          })),
                  obscureText: _obscureText,
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(4)),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20, right: 20),
                      hintText: "confirm password",
                      labelText: "Confirm Password",
                      hintStyle: TextStyle(
                        color: Colors.black,
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      suffixIcon: IconButton(
                          icon: Icon(_obscureText
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () {
                            _toggle();
                          })),
                  obscureText: _obscureText,
                ),
              ),
              SizedBox(height: 10),
              Center(child: Text("Available to be a :")),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    children: [
                      Container(
                          child: Checkbox(
                              value: _val1,
                              onChanged: (bool value) {
                                setState(() {
                                  _val1 = value;
                                });
                              })),
                      Text("Mentor"),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          child: Checkbox(
                              value: _val2,
                              onChanged: (bool value) {
                                setState(() {
                                  _val2 = value;
                                });
                              })),
                      Text("Mentee"),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                      child: Checkbox(
                          value: _val3,
                          onChanged: (bool value) {
                            setState(() {
                              _val3 = value;
                            });
                          })),
                  Center(
                    child: Text(
                      "I confirm that i have read and accept to be bound \nby the AnitaB.org Code of Conduct, Terms and\nPrivacy Policy. Further I consent to use of my\ninformation for the started purpose",
                      style: TextStyle(fontSize: 12),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              MaterialButton(
                  child: Text("Sign Up"),
                  color: Colors.lightBlue,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProfilePage()));
                  })
            ],
          )
        ]));
  }
}
