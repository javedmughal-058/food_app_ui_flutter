import 'package:flutter/material.dart';


class bookmark extends StatefulWidget {
  const bookmark({Key? key}) : super(key: key);

  @override
  State<bookmark> createState() => _bookmarkState();
}

class _bookmarkState extends State<bookmark> {
  @override
  Widget build(BuildContext context) {
     return  const Center(
       child: Text("bookmarl"),
     );
  }
}