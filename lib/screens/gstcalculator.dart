// ignore_for_file: unnecessary_new, prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';

class GstCalculator extends StatelessWidget {
  double billAmount = 0.0;
  double gstPercentage = 0.0;

  @override
  Widget build(BuildContext context) {
    // Create first input field
    TextField billAmountField = new TextField(
        decoration: new InputDecoration(labelText: "Bill amount(\$)"),
        keyboardType: TextInputType.number,
        onChanged: (String value) {
          try {
            billAmount = double.parse(value.toString());
          } catch (exception) {
            billAmount = 0.0;
          }
        });
    TextButton calculateButton = new TextButton(
        child: new Text("Calculate"),
        onPressed: () {
          // Calculate tip and total
          double calculatedGst = billAmount * gstPercentage / 100.0;
          double total = billAmount + calculatedGst;

// Generate dialog
          AlertDialog dialog = new AlertDialog(
              content: new Text("GST Rs: $calculatedGst \n"
                  "Total Rs.: $total"));

// Show dialog
          showDialog(builder: (context) => dialog, context: context);
        });
// Create another input field
    TextField gstPercentageField = new TextField(
        decoration: new InputDecoration(labelText: "GST %", hintText: "15"),
        keyboardType: TextInputType.number,
        onChanged: (String value) {
          try {
            gstPercentage = double.parse(value.toString());
          } catch (exception) {
            gstPercentage = 0.0;
          }
        });

    Container container = new Container(
        padding: const EdgeInsets.all(16.0),
        child: new Column(
            children: [billAmountField, gstPercentageField, calculateButton]));
    AppBar appBar = new AppBar(title: new Text("GST Calculator"),backgroundColor: Color(0xFF0E83DE),);
    Scaffold scaffold = new Scaffold(appBar: appBar, body: container,);
    return scaffold;
  }
}
