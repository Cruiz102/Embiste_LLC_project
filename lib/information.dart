import 'package:embiste_llc_project/interact_on_hover.dart';
import 'package:flutter/material.dart';

class Information extends StatefulWidget {
  const Information({Key? key}) : super(key: key);

  @override
  _InformationState createState() => _InformationState();
}

class _InformationState extends State<Information> {
  var text =
      "An uneven smile can be caused by a number of factors, including chewing on one side more than the other, crooked or crowded teeth, an injury, tissue trauma, bell's palsy, or even genetics. There are tons of different reasons why your smile might not be perfectly symmetrical, and some are only temporary.";

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        color: Colors.blueGrey,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ExpandBox(), ExpandBox()],
            ),
            ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 400), child: Text(text)),
            Expanded(child: Icon(Icons.ac_unit))
          ],
        ));
  }
}
