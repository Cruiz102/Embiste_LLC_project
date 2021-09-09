import 'package:embiste_llc_project/information.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height / 2;
    return CustomScrollView(scrollBehavior: ScrollBehavior(), slivers: [
      SliverAppBar(
        foregroundColor: Colors.green,
        expandedHeight: MediaQuery.of(context).size.height,
        flexibleSpace: FlexibleSpaceBar(
            title: Container(
                margin: EdgeInsets.only(bottom: height),
                child: Text(
                  "Embiste LLC",
                  style: TextStyle(fontSize: 30),
                )),
            background: Image(
                fit: BoxFit.cover,
                image: AssetImage("assets/landing_image.jpeg"))),
      ),
      SliverList(
          delegate: SliverChildListDelegate([
        Container(
          color: Colors.grey.shade300,
          height: 200,
          child: Column(children: [
            Text(
              "Who we are",
              style: TextStyle(fontSize: 30),
            ),
            Information()
          ]),
        ),
        Container(
          height: 600,
          color: Colors.blue,
        )
      ]))
    ]);
  }
}
