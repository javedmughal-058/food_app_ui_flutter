import 'package:flutter/material.dart';
import 'package:food_app_ui_flutter/Screens/widgets.dart';

import 'detail.dart';

class discovery extends StatefulWidget {
  const discovery({Key? key}) : super(key: key);

  @override
  State<discovery> createState() => _discoveryState();
}

class _discoveryState extends State<discovery> {
  bool _hasBeenPressed = false;
  bool _hasBeenPressed1 = false;
  bool _hasBeenPressed2 = false;
  bool _hasBeenPressed3 = false;
  bool _hasBeenPressed4 = false;
  bool _hasBeenPressed5 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Discovery',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  //padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                  // color: Colors.red,
                  height: 160,
                  width: 140,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      color: Colors.white),
                  child: RaisedButton(
                    color: _hasBeenPressed ? Colors.amber : Colors.white,
                    onPressed: () => {
                      setState(() {
                        _hasBeenPressed = !_hasBeenPressed;
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => detail()));
                      })
                    },
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                          "images/mug.png",
                          height: 60,
                          width: 60,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'Bars and Hotels',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const Text(
                          '122 Places',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black26,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  // color: Colors.red,
                  height: 160,
                  width: 140,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      color: Colors.white),
                  child: RaisedButton(
                    color: _hasBeenPressed1 ? Colors.amber : Colors.white,
                    onPressed: () => {
                      setState(() {
                        _hasBeenPressed1 = !_hasBeenPressed1;
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => detail()));
                      })
                    },
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                          "images/serve.png",
                          height: 60,
                          width: 60,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'Fine Dining',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const Text(
                          '15 Places',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black26,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 160,
                  width: 140,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      color: Colors.white),
                  child: RaisedButton(
                    color: _hasBeenPressed2 ? Colors.amber : Colors.white,
                    onPressed: () => {
                      setState(() {
                        _hasBeenPressed2 = !_hasBeenPressed2;
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => detail()));
                      })
                    },
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                          "images/shop.png",
                          height: 60,
                          width: 60,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'Caffee',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const Text(
                          '28 Places',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black26,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 160,
                  width: 140,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      color: Colors.white),
                  child: RaisedButton(
                    color: _hasBeenPressed3 ? Colors.amber : Colors.white,
                    onPressed: () => {
                      setState(() {
                        _hasBeenPressed3 = !_hasBeenPressed3;
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => detail()));
                      })
                    },
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                          "images/nearby.png",
                          height: 60,
                          width: 60,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'Nearby',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const Text(
                          '34 Places',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black26,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 160,
                  width: 140,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      color: Colors.white),
                  child: RaisedButton(
                    color: _hasBeenPressed4 ? Colors.amber : Colors.white,
                    onPressed: () => {
                      setState(() {
                        _hasBeenPressed4 = !_hasBeenPressed4;
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => detail()));
                      })
                    },
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                          "images/fastfood.png",
                          height: 60,
                          width: 60,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'Fast Foods',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const Text(
                          '29 Places',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black26,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 160,
                  width: 140,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      color: Colors.white),
                  child: RaisedButton(
                    color: _hasBeenPressed5 ? Colors.amber : Colors.white,
                    onPressed: () => {
                      setState(() {
                        _hasBeenPressed5 = !_hasBeenPressed5;
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => detail()));
                      })
                    },
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                          "images/pizzafood.png",
                          height: 60,
                          width: 60,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'Featured Food',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const Text(
                          '21 Places',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black26,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
