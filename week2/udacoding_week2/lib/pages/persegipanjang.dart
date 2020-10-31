import "package:flutter/material.dart";

class PersegiPanjang extends StatefulWidget {
  @override
  _PersegiPanjangState createState() => _PersegiPanjangState();
}

class _PersegiPanjangState extends State<PersegiPanjang> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController panjangController = new TextEditingController();
  TextEditingController lebarController = new TextEditingController();

  String panjang, lebar;

  void _warningdialog(panjang) {
    if (panjang.isNotEmpty) return;
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

  void _lebardialog(lebar) {
    if (lebar.isNotEmpty) return;
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
        "Luas Persegi Panjang adalah $luas cm2 dan Kelilingnya adalah $keliling cm",
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
        appBar: AppBar(title: Text("Persegi Panjang")),
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
                    onFieldSubmitted: (panjang) {
                      _warningdialog(panjang);
                    },
                    controller: panjangController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 20, right: 20),
                        labelText: "Masukkan Panjang :",
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none),
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
                    onFieldSubmitted: (lebar) {
                      _lebardialog(lebar);
                    },
                    controller: lebarController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 20, right: 20),
                        labelText: "Masukkan Lebar :",
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
                        panjang = panjangController.text;
                        int npanjang = int.parse(panjang);
                        lebar = lebarController.text;
                        int nlebar = int.parse(lebar);

                        if (_formKey.currentState.validate()) {
                          int luas = npanjang * nlebar;
                          int keliling = (2 * npanjang) +
                              (2 * nlebar) +
                              (2 * npanjang + nlebar);

                          _hasildialog(luas, keliling);
                        }
                      }),
                ),
              ],
            )));
  }
}
