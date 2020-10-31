import "package:flutter/material.dart";

class Persegi extends StatefulWidget {
  @override
  _PersegiState createState() => _PersegiState();
}

class _PersegiState extends State<Persegi> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController sisiController = new TextEditingController();

  String sisi;
  void _warningdialog(sisi) {
    if (sisi.isNotEmpty) return;
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
        "Luas Persegi adalah $luas cm2 dan Kelilingnya adalah $keliling cm",
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
        appBar: AppBar(title: Text("Persegi")),
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
                    onFieldSubmitted: (sisi) {
                      _warningdialog(sisi);
                    },
                    controller: sisiController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 20, right: 20),
                        labelText: "Masukkan Sisi :",
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
                        sisi = sisiController.text;
                        int nsisi = int.parse(sisi);

                        if (_formKey.currentState.validate()) {
                          int luas = nsisi * nsisi;
                          int keliling = 4 * nsisi;

                          _hasildialog(luas, keliling);
                        }
                      }),
                ),
              ],
            )));
  }
}
