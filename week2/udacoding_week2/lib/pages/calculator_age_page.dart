import "package:flutter/material.dart";

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController birthDateController = new TextEditingController();
  TextEditingController birthMonthController = new TextEditingController();
  TextEditingController birthYearController = new TextEditingController();

  String birthDate, birthMonth, birthYear;

  void _alertdialog(ageDate, ageMonth, ageYear) {
    AlertDialog alertDialog = new AlertDialog(
      content: Text(
        "Umur anda adalah $ageYear tahun $ageMonth bulan $ageDate hari",
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
        appBar: AppBar(
          title: Text("Kalkulator Umur"),
          centerTitle: true,
        ),
        body: Form(
            key: _formKey,
            child: Column(children: <Widget>[
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(4)),
                child: TextFormField(
                  onFieldSubmitted: (birthDate) {},
                  controller: birthDateController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20, right: 20),
                      hintText: "dd",
                      labelText: "Masukkan Tanggal Lahir :",
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
                  onFieldSubmitted: (birthDate) {},
                  controller: birthMonthController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20, right: 20),
                      hintText: "mm",
                      labelText: "Masukkan Bulan Lahir :",
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
                  onFieldSubmitted: (birthDate) {},
                  controller: birthYearController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20, right: 20),
                      hintText: "yyyy",
                      labelText: "Masukkan Tahun Lahir:",
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
                      birthDate = birthDateController.text;
                      int birthDay = int.parse(birthDate);

                      birthMonth = birthMonthController.text;
                      int birthMonthh = int.parse(birthMonth);

                      birthYear = birthYearController.text;
                      int birthYearr = int.parse(birthYear);

                      if (_formKey.currentState.validate()) {
                        DateTime today = DateTime.now();
                        int ageDate = today.day - birthDay;
                        int ageMonth = today.month - birthMonthh;
                        int ageYear = today.year - birthYearr;

                        _alertdialog(ageDate, ageMonth, ageYear);
                      }
                    }),
              ),
            ])));
  }
}
