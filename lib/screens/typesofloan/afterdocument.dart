// ignore_for_file: camel_case_types, prefer_const_constructors, duplicate_ignore

import 'package:bottom_picker/bottom_picker.dart';
import 'package:flutter/material.dart';
import 'package:loan_app/screens/secondscreen.dart';

class afterdocument extends StatefulWidget {
  const afterdocument({super.key});

  @override
  State<afterdocument> createState() => _afterdocumentState();
}

class _afterdocumentState extends State<afterdocument> {
  double _value = 10000;
  List<Text> items = [
    Text("Salaried"),
    Text("Self employed"),
    Text("Student"),
    Text("Retired"),
    Text("Housewife"),
    Text("Others"),
  ];

  List<Text> items1 = [
    Text("Not Educated "),
    Text("Primary school"),
    Text("Senior School"),
    Text("High School"),
    Text("Bachelors"),
    Text("Doctors"),
  ];

  List<Text> items2 = [
    Text("< ₹ 15000"),
    Text("< ₹ 15001 - ₹25000"),
    Text("< ₹30000 - <₹35000"),
    Text("< ₹35000 - ₹45000"),
    Text("₹ 55001+"),
  ];

  List<Text> items3 = [
    Text("Own house"),
    Text("Rented"),
    Text("Others"),
  ];
  @override
  Widget build(BuildContext context) {
    var mediaqry = MediaQuery.of(context);
    var scheight = mediaqry.size.height;
    var scwidth = mediaqry.size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        // elevation: 0,
        backgroundColor: const Color(0xFF0E83DE),
        title: const Center(child: Text("Last Step")),
        // ignore: prefer_const_constructors
        actions: const [
          SizedBox(
            width: 30,
          )
        ],
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: scheight * 0.05,
              width: scwidth,
              child: Center(
                  child: Text(
                "Selected Loan Amount:- $_value",
                style: const TextStyle(fontSize: 20),
              )),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: scwidth * 0.9,
              height: scheight * 0.1,
              child: Slider(
                label: "$_value",
                activeColor: Colors.black,
                inactiveColor: Colors.grey,
                thumbColor: Colors.black,
                divisions: 4000,
                min: 10000.00,
                max: 1000000.00,
                value: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value;
                  });
                },
              ),
            )
          ],
        ),
        Row(
          children: [
            Container(
              height: scheight * 0.05,
              width: scwidth,
              decoration: BoxDecoration(color: Color(0xFFFBFE6E)),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    """Fill in the information below and your chances of getting a loan increase by 80% !""",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: scheight * 0.01,
        ),
        Padding(
          padding: const EdgeInsets.all(1.0),
          child: Container(
              height: scheight * 0.07,
              width: scwidth,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  // maxLength: 10,
                  keyboardType: TextInputType.number,
                  showCursor: false,
                  cursorHeight: 30,
                  decoration: InputDecoration(
                    hintText: "Enter your number",
                    border: InputBorder.none,
                  ),
                ),
              )),
        ),
        SizedBox(
          height: scheight * 0.01,
        ),
        Padding(
          padding: const EdgeInsets.all(1.0),
          child: Container(
              height: scheight * 0.07,
              width: scwidth,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  // maxLength: 10,

                  showCursor: false,
                  cursorHeight: 30,
                  decoration: InputDecoration(
                    hintText: "Enter your email",
                    border: InputBorder.none,
                  ),
                ),
              )),
        ),
        SizedBox(
          height: scheight * 0.01,
        ),
        Padding(
          padding: const EdgeInsets.all(1.0),
          child: Container(
            height: scheight * 0.07,
            width: scwidth,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: scheight * 0.07,
                  width: scwidth / 2,
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 18),
                    child: Text('Occupation', style: TextStyle(fontSize: 17)),
                  ),
                ),
                SizedBox(
                    height: scheight * 0.07,
                    width: scwidth / 2.1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton.icon(
                          onPressed: () {
                            BottomPicker(
                                    closeIconColor: Colors.white,
                                    items: items,
                                    title: "Choose your Occupation",
                                    titleStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20))
                                .show(context);
                          },
                          icon: Icon(Icons.arrow_right_rounded),
                          label: Text("Tap to select")),
                    ))
              ],
            ),
          ),
        ),
        SizedBox(
          height: scheight * 0.01,
        ),
        Padding(
          padding: const EdgeInsets.all(1.0),
          child: Container(
            height: scheight * 0.07,
            width: scwidth,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: scheight * 0.07,
                  width: scwidth / 2,
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 18),
                    child: Text('Education', style: TextStyle(fontSize: 17)),
                  ),
                ),
                SizedBox(
                    height: scheight * 0.07,
                    width: scwidth / 2.1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton.icon(
                          onPressed: () {
                            BottomPicker(
                                    closeIconColor: Colors.white,
                                    items: items1,
                                    title: "Choose your Education",
                                    titleStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20))
                                .show(context);
                          },
                          icon: Icon(Icons.arrow_right_rounded),
                          label: Text("Tap to select")),
                    ))
              ],
            ),
          ),
        ),
        SizedBox(
          height: scheight * 0.01,
        ),
        Padding(
          padding: const EdgeInsets.all(1.0),
          child: Container(
            height: scheight * 0.07,
            width: scwidth,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: scheight * 0.07,
                  width: scwidth / 2,
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 18),
                    child: Text('Salary', style: TextStyle(fontSize: 17)),
                  ),
                ),
                SizedBox(
                    height: scheight * 0.07,
                    width: scwidth / 2.1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton.icon(
                          onPressed: () {
                            BottomPicker(
                                    closeIconColor: Colors.white,
                                    items: items2,
                                    title: "Choose your Salary",
                                    titleStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20))
                                .show(context);
                          },
                          icon: Icon(Icons.arrow_right_rounded),
                          label: Text("Tap to select")),
                    ))
              ],
            ),
          ),
        ),
        SizedBox(
          height: scheight * 0.01,
        ),
        Padding(
          padding: const EdgeInsets.all(1.0),
          child: Container(
            height: scheight * 0.07,
            width: scwidth,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: scheight * 0.07,
                  width: scwidth / 2,
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 18),
                    child: Text('Type of Residence',
                        style: TextStyle(fontSize: 17)),
                  ),
                ),
                SizedBox(
                    height: scheight * 0.07,
                    width: scwidth / 2.1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton.icon(
                          onPressed: () {
                            BottomPicker(
                                    closeIconColor: Colors.white,
                                    items: items3,
                                    title: "Choose your Residence",
                                    titleStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20))
                                .show(context);
                          },
                          icon: Icon(Icons.arrow_right_rounded),
                          label: Text("Tap to select")),
                    ))
              ],
            ),
          ),
        ),
        SizedBox(
          height: scheight * 0.02,
        ),
        InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return SimpleDialog(backgroundColor: Color(0xFF0E83DE),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  title: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                              "Your Loan submitted successfully If you are eligible,we Connect to you and give a loan as soon as possible",style: TextStyle(color: Colors.red),),
                          TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(
                                  builder: (context) {
                                    return const secondscreen();
                                  },
                                ));
                              },
                              child: Text("Ok",style: TextStyle(color: Colors.white,fontSize: 15),))
                        ],
                      )),
                );
              },
            );
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
                  color: Colors.white, fontSize: 25, fontFamily: "Sun Flower"),
            )),
          ),
        ),
      ]),
    );
  }
}
