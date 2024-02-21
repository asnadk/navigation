import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  
   final String name;

  const HomeScreen({super.key,required this.name});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Text("welcome__$name",style: const TextStyle(fontSize: 30,fontWeight: FontWeight.w300,color: Colors.amber),),
      ),
    );
  }
}