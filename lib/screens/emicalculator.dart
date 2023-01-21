// ignore_for_file: avoid_unnecessary_containers, prefer_is_empty, no_leading_underscores_for_local_identifiers, avoid_print, deprecated_member_use, use_key_in_widget_constructors, prefer_final_fields, camel_case_types

import "package:flutter/material.dart";
import "dart:math";

class emicalculator extends StatefulWidget {
  @override
  emicalculatorState createState() => emicalculatorState();
}

class emicalculatorState extends State<emicalculator> {
  List _tenureTypes = ['Month(s)', 'Year(s)'];
  String _tenureType = "Year(s)";
  String _emiResult = "";

  final TextEditingController _principalAmount = TextEditingController();
  final TextEditingController _interestRate = TextEditingController();
  final TextEditingController _tenure = TextEditingController();

  bool _switchValue = true;

  @override
  Widget build(BuildContext context) {
    var mediaqry = MediaQuery.of(context);
    var scheight = mediaqry.size.height;
    var scwidth = mediaqry.size.width;
    return Scaffold(
        appBar: AppBar(title: const Text("EMI Calculator"), elevation: 0.0),
        body: Center(
            child: Container(
                child: Column(
          children: <Widget>[
            Container(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: _principalAmount,
                  decoration: const InputDecoration(
                      labelText: "Enter Principal Amount"),
                  keyboardType: TextInputType.number,
                )),
            Container(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: _interestRate,
                  decoration: const InputDecoration(labelText: "Interest Rate"),
                  keyboardType: TextInputType.number,
                )),
            Container(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: <Widget>[
                    Flexible(
                        flex: 4,
                        fit: FlexFit.tight,
                        child: TextField(
                          controller: _tenure,
                          decoration:
                              const InputDecoration(labelText: "Tenure"),
                          keyboardType: TextInputType.number,
                        )),
                    Flexible(
                        flex: 1,
                        child: Column(children: [
                          Text(_tenureType,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold)),
                          Switch(
                              value: _switchValue,
                              onChanged: (bool value) {
                                print(value);

                                if (value) {
                                  _tenureType = _tenureTypes[1];
                                } else {
                                  _tenureType = _tenureTypes[0];
                                }

                                setState(() {
                                  _switchValue = value;
                                });
                              })
                        ]))
                  ],
                )),
            InkWell(
              onTap: () {
                _handleCalculation();
              },
              child: Container(
                height: scheight * 0.06,
                width: scwidth * 0.6,
                decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black38,
                          offset: Offset(2.0, 3.0), //(x,y)
                          blurRadius: 6.0,
                          blurStyle: BlurStyle.solid),
                    ],
                    color: Color(0xFF0E83DE),
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: const Center(
                    child: Text(
                  "Apply loan",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: "Sun Flower"),
                )),
              ),
            ),
            emiResultsWidget(_emiResult)
          ],
        ))));
  }

  void _handleCalculation() {
    //  Amortization
    //  A = Payemtn amount per period
    //  P = Initial Printical (loan amount)
    //  r = interest rate
    //  n = total number of payments or periods

    double A = 0.0;
    int P = int.parse(_principalAmount.text);
    double r = int.parse(_interestRate.text) / 12 / 100;
    int n = _tenureType == "Year(s)"
        ? int.parse(_tenure.text) * 12
        : int.parse(_tenure.text);

    A = (P * r * pow((1 + r), n) / (pow((1 + r), n) - 1));

    _emiResult = A.toStringAsFixed(2);

    setState(() {});
  }

  Widget emiResultsWidget(emiResult) {
    bool canShow = false;
    String _emiResult = emiResult;

    if (_emiResult.length > 0) {
      canShow = true;
    }
    return Container(
        margin: const EdgeInsets.only(top: 40.0),
        child: canShow
            ? Column(children: [
                const Text("Your Monthly EMI is",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
                Container(
                    child: Text(_emiResult,
                        style: const TextStyle(
                            fontSize: 50.0, fontWeight: FontWeight.bold)))
              ])
            : Container());
  }
}
