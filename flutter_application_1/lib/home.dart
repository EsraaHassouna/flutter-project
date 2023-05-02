import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets\images\png-clipart-movies-and-popcorn-folder-icon-movies.png"),
        title: Text("Movie DB"),
        centerTitle: true,),
      body: SafeArea(



      ),

      );

      
  }
}
