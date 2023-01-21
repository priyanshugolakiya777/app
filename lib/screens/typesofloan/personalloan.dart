// ignore_for_file: camel_case_types, avoid_print, must_be_immutable

import 'package:flutter/material.dart';
import 'package:loan_app/screens/model.dart';
import 'package:loan_app/screens/typesofloan/documet.dart';

class personalloan extends StatefulWidget {
  String typeofloan;
  personalloan(this.typeofloan, {super.key});

  @override
  State<personalloan> createState() => _personalloanState();
}

class _personalloanState extends State<personalloan> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    forlanguage();
  }

  List setlanguage = [];

  int colorcnt = 0;
  @override
  Widget build(BuildContext context) {
    var mediaqry = MediaQuery.of(context);
    var scheight = mediaqry.size.height;
    var scwidth = mediaqry.size.width;
    return Scaffold(
      appBar: AppBar(
        // elevation: 0,
        backgroundColor: const Color(0xFF0E83DE),
        title: Center(child: Text(widget.typeofloan)),
        // ignore: prefer_const_constructors
        actions: const [
          SizedBox(
            width: 50,
          )
        ],
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  colorcnt = 0;
                });
                forlanguage();
              },
              child: SizedBox(
                height: scheight * 0.05,
                width: scwidth / 3,
                child: Center(
                    child: Text(
                  "ENGLISH",
                  style: TextStyle(
                      fontSize: 17,
                      color: colorcnt == 0
                          ? const Color(0xFF0E83DE)
                          : Colors.black),
                )),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  colorcnt = 1;
                });
                forlanguage();
              },
              child: SizedBox(
                height: scheight * 0.05,
                width: scwidth / 3,
                child: Center(
                    child: Text(
                  " HINDI",
                  style: TextStyle(
                      fontSize: 17,
                      color: colorcnt == 1
                          ? const Color(0xFF0E83DE)
                          : Colors.black),
                )),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  colorcnt = 2;
                });
                forlanguage();
              },
              child: SizedBox(
                height: scheight * 0.05,
                width: scwidth / 3,
                child: Center(
                    child: Text(
                  "GUJRATI",
                  style: TextStyle(
                      fontSize: 17,
                      color: colorcnt == 2
                          ? const Color(0xFF0E83DE)
                          : Colors.black),
                )),
              ),
            ),
          ],
        ),
        SizedBox(
          height: scheight * 0.7,
          width: scwidth,
          // ignore: prefer_const_constructors
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  Expanded(
                    // ignore: prefer_const_constructors
                    child: Text.rich(TextSpan(text: "${setlanguage[0]}")),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  Expanded(
                    // ignore: prefer_const_constructors
                    child: Text.rich(TextSpan(text: "${setlanguage[1]}")),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  Expanded(
                    // ignore: prefer_const_constructors
                    child: Text.rich(TextSpan(text: "${setlanguage[2]}")),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  Expanded(
                    // ignore: prefer_const_constructors
                    child: Text.rich(TextSpan(text: "${setlanguage[3]}")),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  Expanded(
                    // ignore: prefer_const_constructors
                    child: Text.rich(TextSpan(text: "${setlanguage[4]}")),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  Expanded(
                    // ignore: prefer_const_constructors
                    child: Text.rich(TextSpan(text: "${setlanguage[5]}")),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  Expanded(
                    // ignore: prefer_const_constructors
                    child: Text.rich(TextSpan(text: "${setlanguage[6]}")),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  Expanded(
                    // ignore: prefer_const_constructors
                    child: Text.rich(TextSpan(text: "${setlanguage[7]}")),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  Expanded(
                    // ignore: prefer_const_constructors
                    child: Text.rich(TextSpan(text: "${setlanguage[8]}")),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  Expanded(
                    // ignore: prefer_const_constructors
                    child: Text.rich(TextSpan(text: "${setlanguage[9]}")),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  Expanded(
                    // ignore: prefer_const_constructors
                    child: Text.rich(TextSpan(text: "${setlanguage[10]}")),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  Expanded(
                    // ignore: prefer_const_constructors
                    child: Text.rich(TextSpan(text: "${setlanguage[11]}")),
                  )
                ],
              ),
            )
          ]),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                // ignore: prefer_const_constructors
                return  document(widget.typeofloan);
              },
            ));
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
              "Go To Document",
              style: TextStyle(
                  color: Colors.white, fontSize: 25, fontFamily: "Sun Flower"),
            )),
          ),
        ),
      ]),
    );
  }

  void forlanguage() {
    if (colorcnt == 0) {
      setState(() {
        setlanguage = [];
        setlanguage.addAll(Model.language);
      });
      print("=====$setlanguage");
    } else if (colorcnt == 1) {
      setState(() {
        setlanguage = [];
        setlanguage.addAll(Model.hindilanguage);
      });
      print("====22=$setlanguage");
    } else if (colorcnt == 2) {
      setState(() {
        setlanguage = [];
        setlanguage.addAll(Model.gujratilanguage);
      });
      print("====33=$setlanguage");
    }
  }
}
