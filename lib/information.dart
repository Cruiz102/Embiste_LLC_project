import 'package:flutter/material.dart';

class Information extends StatefulWidget {
  const Information({Key? key}) : super(key: key);

  @override
  _InformationState createState() => _InformationState();
}

class _InformationState extends State<Information> {
  var text =
      "An uneven smile can be caused by a number of factors, including chewing on one side more than the other, crooked or crowded teeth, an injury, tissue trauma, bell's palsy, or even genetics. There are tons of different reasons why your smile might not be perfectly symmetrical, and some are only temporary.";
  var info1 = Container(
      width: 30, color: Colors.blue, height: 30, child: Text("about us"));
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blueGrey,
        child: Column(
          children: [
            Row(
              children: [info1, info1, info1],
            ),
            Text(text)
          ],
        ));
  }
}
