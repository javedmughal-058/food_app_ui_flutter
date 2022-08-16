// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_app_ui_flutter/Screens/widgets.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final List _imagesource = [
    'images/pizza.jpg',
    'images/burger_1.jpg',
    'images/pizza_1.jpg',
    'images/burger_2.jpg',
    'images/pizza_3.jpg'
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
    centerTitle: true,
            title: const Text('Sydney CBD', style: TextStyle(color: Colors.black),),
            backgroundColor: Colors.white,
            leading: Icon(Icons.arrow_back, color: Colors.amber)
  ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 3),
            child: SizedBox(
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          const BorderSide(color: Colors.black12, width: 1),
                    ),
                    hintText: 'search for restaurants...'),
              ),
            ),
          ),
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                height: 190,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
                // color: Colors.amber[600],
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 200,
                    autoPlay: true,
                    //enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      setState(
                        () {
                          _currentIndex = index;
                        },
                      );
                    },
                  ),
                  items: _imagesource.map(
                    (imagepath) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.symmetric(horizontal: 0),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: SizedBox.fromSize(
                                    size: Size.fromRadius(100),
                                    child: Image.asset(imagepath))),
                          );
                        },
                      );
                    },
                  ).toList(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _imagesource.map((urlOfItem) {
                  int index = _imagesource.indexOf(urlOfItem);
                  return Container(
                    width: 10.0,
                    height: 10.0,
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentIndex == index
                          ? Color.fromARGB(255, 240, 216, 0)
                          : Color.fromARGB(255, 255, 255, 255),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Most Populer",
                  textAlign: TextAlign.left,
                  style: headstyle()
                ),
                GestureDetector(
                    child: Text(
                      "see all",
                      style: TextStyle(color: Colors.blueGrey),
                    ),
                    onTap: () => {})
              ],
            ),
          ),
          SizedBox(
              height: 240,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Card(
                    child: Center(
                      child: TextButton(
                        onPressed: () {},
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                          // color: Colors.red,
                          height: 250,
                          width: 220,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Container(
                                  child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                child: Image.asset(
                                  "images/pizza.jpg",
                                ),
                              )),
                              //Divider(height: 10,color: Colors.black,),
                              Container(
                                alignment: Alignment.topLeft,
                                padding: const EdgeInsets.only(top: 5),
                                child: SizedBox(
                                  width: 200.0,
                                  child: Column(
                                    children:  [
                                      Text('KFC Broadway',
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          softWrap: false,
                                          textAlign: TextAlign.start,
                                          style:headstyle(),),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        '122 Queen Street',
                                        textAlign: TextAlign.start,
                                        style: textstyle()
                                      ),
                                      Text(
                                        'Fried Chicken, American',
                                        textAlign: TextAlign.start,
                                        style: textstyle()
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Center(
                      child: TextButton(
                        onPressed: () {},
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                          // color: Colors.red,
                          height: 250,
                          width: 220,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Container(
                                  child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                child: Image.asset(
                                  "images/pizza_3.jpg",
                                ),
                              )),
                              //Divider(height: 10,color: Colors.black,),
                              Container(
                                alignment: Alignment.topLeft,
                                padding: const EdgeInsets.only(top: 5),
                                child: SizedBox(
                                  width: 200.0,
                                  child: Column(
                                    children:  [
                                      Text('Greek House',
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          softWrap: false,
                                          textAlign: TextAlign.start,
                                          style: headstyle()),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        '23 Queen Street',
                                        textAlign: TextAlign.start,
                                        style: textstyle()
                                      ),
                                      Text(
                                        'Burritos, Greek',
                                        textAlign: TextAlign.start,
                                        style: textstyle()
                                        ),
                                      
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Center(
                      child: TextButton(
                        onPressed: () {},
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                          // color: Colors.red,
                          height: 250,
                          width: 220,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Container(
                                  child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                child: Image.asset(
                                  "images/pizza.jpg",
                                ),
                              )),
                              //Divider(height: 10,color: Colors.black,),
                              Container(
                                alignment: Alignment.topLeft,
                                padding: const EdgeInsets.only(top: 5),
                                child: SizedBox(
                                  width: 200.0,
                                  child: Column(
                                    children:  [
                                      Text('KFC Broadway',
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          softWrap: false,
                                          textAlign: TextAlign.start,
                                          style: headstyle()),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        '122 Queen Street',
                                        textAlign: TextAlign.start,
                                        style: textstyle()
                                      ),
                                      Text(
                                        'Fried Chicken, American',
                                        textAlign: TextAlign.start,
                                        style: textstyle()
                                        ),
                                      
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Meal Deals",
                  textAlign: TextAlign.left,
                  style: headstyle()
                ),
                GestureDetector(
                    child: Text(
                      "see all",
                      style: TextStyle(color: Colors.blueGrey),
                    ),
                    onTap: () => {})
              ],
            ),
          ),
          SizedBox(
              height: 240,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Card(
                    child: Center(
                      child: TextButton(
                        onPressed: () {},
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                          // color: Colors.red,
                          height: 250,
                          width: 220,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Container(
                                  child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                child: Image.asset(
                                  "images/burger.jpg",
                                ),
                              )),
                              //Divider(height: 10,color: Colors.black,),
                              Container(
                                alignment: Alignment.topLeft,
                                padding: const EdgeInsets.only(top: 5),
                                child: SizedBox(
                                  width: 200.0,
                                  child: Column(
                                    children:  [
                                      Text('KFC Broadway',
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          softWrap: false,
                                          textAlign: TextAlign.start,
                                          style: headstyle()),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        '122 Queen Street',
                                        textAlign: TextAlign.start,
                                        style: textstyle()
                                      ),
                                      Text(
                                        'Fried Chicken, American',
                                        textAlign: TextAlign.start,
                                        style: headstyle()
                                        ),
                                      
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Center(
                      child: TextButton(
                        onPressed: () {},
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                          // color: Colors.red,
                          height: 250,
                          width: 220,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Container(
                                  child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                child: Image.asset(
                                  "images/burger_2.jpg",
                                ),
                              )),
                              //Divider(height: 10,color: Colors.black,),
                              Container(
                                alignment: Alignment.topLeft,
                                padding: const EdgeInsets.only(top: 5),
                                child: SizedBox(
                                  width: 200.0,
                                  child: Column(
                                    children:  [
                                      Text('Greek House',
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          softWrap: false,
                                          textAlign: TextAlign.start,
                                          style: headstyle()),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        '23 Queen Street',
                                        textAlign: TextAlign.start,
                                        style: textstyle()
                                        ),
                                      
                                      Text(
                                        'Burritos, Greek',
                                        textAlign: TextAlign.start,
                                        style: textstyle()
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Center(
                      child: TextButton(
                        onPressed: () {},
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                          // color: Colors.red,
                          height: 250,
                          width: 220,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Container(
                                  child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                child: Image.asset(
                                  "images/burger_3.jpg",
                                ),
                              )),
                              //Divider(height: 10,color: Colors.black,),
                              Container(
                                alignment: Alignment.topLeft,
                                padding: const EdgeInsets.only(top: 5),
                                child: SizedBox(
                                  width: 200.0,
                                  child: Column(
                                    children:  [
                                      Text('KFC Broadway',
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          softWrap: false,
                                          textAlign: TextAlign.start,
                                          style: headstyle()),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        '122 Queen Street',
                                        textAlign: TextAlign.start,
                                        style: textstyle()
                                      ),
                                      Text(
                                        'Fried Chicken, American',
                                        textAlign: TextAlign.start,
                                        style: textstyle()
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
