import 'package:embiste_llc_project/home_header.dart';
import 'package:embiste_llc_project/information.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _controller = ScrollController();
    return ListView(
        controller: _controller,
        physics: ClampingScrollPhysics(),
        children: [HomeHeader(), Information()]);
  }
}
