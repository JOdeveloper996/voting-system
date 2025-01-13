import 'package:flutter/material.dart';

class Representative extends StatefulWidget {
  const Representative({super.key});

  @override
  State<Representative> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Representative> {
  @override
  Widget build(BuildContext context) {
return Scaffold(
  drawer:const Drawer(),
  appBar: AppBar(title:const Center(child:Text("Representative",
  style: TextStyle(color: Colors.white ,fontSize: 24),)) ,backgroundColor:Colors.green ,));
  }
}