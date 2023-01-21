import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loan_app/screens/privacypolicy.dart';

class More extends StatefulWidget {
  const More({super.key});

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    var mediaqry = MediaQuery.of(context);
    var scheight = mediaqry.size.height;
    var scwidth = mediaqry.size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF0E83DE),
        title: const Center(child: Text("More")),
        // ignore: prefer_const_constructors
        actions: const [
          SizedBox(
            width: 50,
          )
        ],
      ),
      backgroundColor: const Color(0xFF0E83DE),
      body: Container(
        height: scheight,
        width: scwidth,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: scheight * 0.15,
                  width: scwidth * 0.7,
                  decoration: BoxDecoration(
                      color: const Color(0xFFEFE7FF),
                      border: Border.all(color: const Color(0xFF8270F6)),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: Row(children: [
                    SizedBox(width: scwidth * 0.05),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xFF8270F6), width: 2),
                          color: Colors.white,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset("images/rateus.svg"),
                      ),
                    ),
                    SizedBox(width: scwidth * 0.05),
                    const Text.rich(TextSpan(
                        text: "Rate Us",
                        style:
                            TextStyle(fontSize: 20, color: Color(0xFF8270F6))))
                  ]),
                )
              ],
            ),
            SizedBox(height: scheight * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: scheight * 0.15,
                  width: scwidth * 0.7,
                  decoration: BoxDecoration(
                      color: const Color(0xFFEFFBD7),
                      border: Border.all(color: const Color(0xFFB1CA64)),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: Row(children: [
                    SizedBox(width: scwidth * 0.05),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xFFB1CA64), width: 2),
                          color: Colors.white,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50))),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 5, top: 8, right: 12, bottom: 6),
                        child: SvgPicture.asset("images/share.svg"),
                      ),
                    ),
                    SizedBox(width: scwidth * 0.05),
                    const Text.rich(TextSpan(
                        text: "Share App",
                        style:
                            TextStyle(fontSize: 20, color: Color(0xFFB1CA64))))
                  ]),
                )
              ],
            ),
            SizedBox(height: scheight * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        // ignore: prefer_const_constructors
                        return privacypolicy();
                      },
                    ));
                  },
                  child: Container(
                    height: scheight * 0.15,
                    width: scwidth * 0.7,
                    decoration: BoxDecoration(
                        color: const Color(0xFFFFE3DF),
                        border: Border.all(color: const Color(0xFFF2765E)),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: Row(children: [
                      SizedBox(width: scwidth * 0.05),
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0xFFF2765E), width: 2),
                            color: Colors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50))),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 8, bottom: 8, right: 8),
                          child: SvgPicture.asset("images/privacypolicy.svg"),
                        ),
                      ),
                      SizedBox(width: scwidth * 0.05),
                      const Text.rich(TextSpan(
                          text: "Privacy Policy",
                          style: TextStyle(
                              fontSize: 20, color: Color(0xFFF2765E))))
                    ]),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
