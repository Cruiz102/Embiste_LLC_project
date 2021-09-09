import 'dart:ui';

import 'package:embiste_llc_project/home.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.mouse,
        // etc.
      };
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.green),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var upperIcons = Container(
      height: 100,
      width: 100,
      child: InkWell(
        onHover: (a) {},
        hoverColor: Colors.green,
        onTap: () {
          print("d");
        },
        child: Icon(
          Icons.home_outlined,
          color: Colors.black,
        ),
      ));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.white,
          toolbarHeight: 100,
          title: Center(child: Row(children: [upperIcons])),
          leading: Container(
            child: ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 200, maxWidth: 200),
                child: Ink.image(
                  child: InkWell(
                    onTap: () => launch(
                        "https://stackoverflow.com/questions/53641053/create-a-button-with-an-image-in-flutter"),
                  ),
                  image: AssetImage("assets/mango.png"),
                )),
          )),
      body: HomePage(),
    );
  }
}
