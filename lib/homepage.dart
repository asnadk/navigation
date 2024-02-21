import 'package:flutter/material.dart';
import 'package:navigator/page2.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

}
TextEditingController name=TextEditingController();
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NAVIGATOR"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
    
          TextField(
            controller: name,
                  decoration: InputDecoration(
                    hintText: 'Enter Your Name',
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
        
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("tap to change page"),
              ElevatedButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>HomeScreen(name: name.text,)));
              }, child: const Icon(Icons.arrow_right_alt),)
            ],
          ),
          
        ],
      ),
    );
  }
}