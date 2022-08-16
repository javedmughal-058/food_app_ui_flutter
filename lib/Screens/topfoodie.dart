import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class topfoodie extends StatefulWidget {
  const topfoodie({Key? key}) : super(key: key);

  @override
  State<topfoodie> createState() => _topfoodieState();
}

class _topfoodieState extends State<topfoodie> {
  @override
  Widget build(BuildContext context) {
     return  Container(
      child: const Center(
        child: Text("Top Foddie"),
      ),
    );
  }
}