import 'package:flutter/material.dart';
import 'package:flutter_test_project/pages/baseLayout/baseLayout.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      title: "Página 2",
      body: Row(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        ],
      )
    );
  }
}