import 'package:flutter/material.dart';

class ExpandBox extends StatefulWidget {
  const ExpandBox({Key? key}) : super(key: key);

  @override
  _ExpandBoxState createState() => _ExpandBoxState();
}

class _ExpandBoxState extends State<ExpandBox> {
  bool selected = true;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (ar) {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: AnimatedContainer(
          width: selected ? 100.0 : 120.0,
          height: selected ? 100.0 : 120.0,
          color: selected ? Colors.red : Colors.blue,
          duration: const Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          child: Icon(Icons.local_movies_outlined),
        ),
      ),
    );
  }
}
