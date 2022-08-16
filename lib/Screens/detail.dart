import 'package:flutter/material.dart';
import 'package:food_app_ui_flutter/Screens/home_page.dart';
import 'package:food_app_ui_flutter/Screens/widgets.dart';

class detail extends StatefulWidget {
  const detail({Key? key}) : super(key: key);

  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'All Photos',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          leading: IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (c)=>main_page()));
          }, icon: Icon(Icons.arrow_back, color: Colors.amber))),
      body: ListView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index) => Container(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    backgroundImage: AssetImage('images/male.png'),
                  ),
                  Column(
                    children: [
                      Text(
                        'Victor Pacheco',
                        style: headstyle(),
                      ),
                      Text(
                        '129 Reviews, 380 Followers',
                        style: textstyle(),
                      ),
                      Text(
                        'Golden Foodies',
                        style: coloredtextstyle(),
                      ),
                    ],
                  ),
                  // OutlinedButton(
                  //   onPressed: null,
                  //   style: ButtonStyle(
                  //     shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(30.0))),
                  //   ),
                  //   child: const Text("follow"),
                  // ),
                  OutlineButton(
                    onPressed: () {},
                    child: const Text(
                      "Follow",
                      style: TextStyle(color: Colors.blue),
                    ),
                    borderSide: BorderSide(color: Colors.blue),
                    shape: StadiumBorder(),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Image.asset('images/pizza.jpg'),
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.thumb_up,
                        color: Colors.amber,
                        size: 18,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.comment, size: 18)),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.share, size: 18)),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
