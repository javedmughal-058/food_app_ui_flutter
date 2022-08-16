import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar appbar(Title text){
  return AppBar(
    centerTitle: true,
            //title: const Text('Sydney CBD', style: TextStyle(color: Colors.black),),
            backgroundColor: Colors.white,
            leading: Icon(Icons.arrow_back, color: Colors.amber)
  );
}

TextStyle headstyle(){
  return const TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontWeight: FontWeight.bold
  );
}
TextStyle textstyle(){
  return const TextStyle(
    color: Colors.black26,
    fontSize: 14,
    
  );
}
TextStyle coloredtextstyle(){
  return const TextStyle(
    color: Colors.amber,
    fontSize: 14,
    
  );
}