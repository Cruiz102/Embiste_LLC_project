import 'package:flutter/material.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  _HomeHeaderState createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  @override
  Widget build(BuildContext context) {
    var headerHeight = MediaQuery.of(context).size.height;
    var headerWidth = MediaQuery.of(context).size.width;
    return Stack(children: [
      Container(
          decoration: BoxDecoration(
              border: Border.all(width: 20, color: Colors.lightGreen)),
          height: headerHeight * 8 / 10,
          width: headerWidth,
          child: Image(
              fit: BoxFit.cover,
              image: AssetImage("assets/landing_image.jpeg"))),
      Positioned(
          left: headerWidth / 2 - 100,
          top: headerHeight * 1 / 3,
          child: Center(
              child: Text(
            "Embiste",
            style: TextStyle(
                letterSpacing: 5,
                shadows: [Shadow(blurRadius: 20, offset: Offset(5, 5))],
                fontWeight: FontWeight.bold,
                fontSize: 50,
                color: Colors.white),
          ))),
      Positioned(
          left: headerWidth * 1 / 3,
          top: headerHeight * 2 / 3,
          child: ElevatedButton(
              onPressed: () {}, child: Container(child: Text("contanct Us"))))
    ]);
  }
}
