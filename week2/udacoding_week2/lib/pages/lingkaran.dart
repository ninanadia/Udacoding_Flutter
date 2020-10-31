import "package:flutter/material.dart";

class Lingkaran extends StatefulWidget {
  @override
  _LingkaranState createState() => _LingkaranState();
}

class _LingkaranState extends State<Lingkaran> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController rController = new TextEditingController();

  String r;
  void _warningdialog(r) {
    if (r.isNotEmpty) return;
    AlertDialog alertDialog = new AlertDialog(
      content: Text(
        "Input Tidak Boleh Kosong",
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

  void _hasildialog(luas, keliling) {
    AlertDialog alertDialog = new AlertDialog(
      content: Text(
        "Luas Lingkaran adalah $luas cm2 dan Kelilingnya adalah $keliling cm",
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
        appBar: AppBar(title: Text("Lingkaran")),
        body: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                SizedBox(height: 30),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(4)),
                  child: TextFormField(
                    onFieldSubmitted: (r) {
                      _warningdialog(r);
                    },
                    controller: rController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 20, right: 20),
                        labelText: "Masukkan Jari-jari :",
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  height: 40,
                  child: MaterialButton(
                      child: Text(
                        "Hitung",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      color: Colors.purple,
                      onPressed: () {
                        r = rController.text;
                        int njari = int.parse(r);

                        if (_formKey.currentState.validate()) {
                          double luas = 22 / 7 * njari * njari;
                          double keliling = 2 * 22 / 7 * njari;

                          _hasildialog(luas, keliling);
                        }
                      }),
                ),
              ],
            )));
  }
}
