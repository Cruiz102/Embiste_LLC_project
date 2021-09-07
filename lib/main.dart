import 'package:embiste_llc_project/home.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.home))],
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
