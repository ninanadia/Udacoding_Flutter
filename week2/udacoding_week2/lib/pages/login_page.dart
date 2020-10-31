import "package:flutter/material.dart";
import 'package:udacoding_week2/pages/homepage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String username = " ", mypassword = " ";

  bool _obscureText = true;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void _usernamedialog(username) {
    if (username.isNotEmpty) return;
    AlertDialog alertDialog = new AlertDialog(
      content: Text(
        "Username tidak boleh kosong",
        style: new TextStyle(fontSize: 20),
      ),
      actions: <Widget>[
        RaisedButton(
            child: Text("OK"),
            color: Colors.purple,
            onPressed: () {
              Navigator.pop(context);
            })
      ],
    );
    showDialog(context: context, child: alertDialog);
  }

  void _passworddialog(mypassword) {
    AlertDialog alertDialog = new AlertDialog(
      content: Text(
        "Password tidak boleh kosong",
        style: new TextStyle(fontSize: 20),
      ),
      actions: <Widget>[
        RaisedButton(
            child: Text("OK"),
            color: Colors.purple,
            onPressed: () {
              Navigator.pop(context);
            })
      ],
    );
    showDialog(context: context, child: alertDialog);
  }

  void _passwordlengthdialog(mypassword) {
    AlertDialog alertDialog = new AlertDialog(
      content: Text(
        "Password tidak boleh kurang dari 6",
        style: new TextStyle(fontSize: 20),
      ),
      actions: <Widget>[
        RaisedButton(
            child: Text("OK"),
            color: Colors.purple,
            onPressed: () {
              Navigator.pop(context);
            })
      ],
    );
    showDialog(context: context, child: alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: _formKey,
      child: ListView(children: <Widget>[
        SizedBox(height: 50),
        Image.asset('assets/welcome.png', height: 250),
        SizedBox(height: 20),
        Center(
          child: Text(
            "Welcome Back",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
            onFieldSubmitted: (username) {
              _usernamedialog(username);
            },
            controller: usernameController,
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
            onFieldSubmitted: (mypassword) {
              if (mypassword.isEmpty) {
                _passworddialog(mypassword);
              } else if (mypassword.length < 6) {
                _passwordlengthdialog(mypassword);
              } else {
                return null;
              }
            },
            controller: passwordController,
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
                    icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility),
                    onPressed: () {
                      _toggle();
                    })),
            obscureText: _obscureText,
          ),
        ),
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          height: 40,
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
                username = usernameController.text;
                mypassword = passwordController.text;

                if (_formKey.currentState.validate()) {
                  if (username != 'admin') {
                    return null;
                  } else if (mypassword != 'admin') {
                    return null;
                  } else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomePage(
                                  uname: username,
                                  password: mypassword,
                                )));
                  }
                }
              }),
        ),
      ]),
    ));
  }
}
