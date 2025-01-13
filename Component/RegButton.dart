// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  const MyButton({super.key,
  required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 75,
        width: 50,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        margin: const EdgeInsets.symmetric(horizontal: 100,vertical: 15),
        decoration: BoxDecoration(
            color: Colors.green.shade500,
            borderRadius: BorderRadius.circular(8)),
        child: const Center(
          child: Text("Sign Up",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 21  ),
          ),
        ),
      ),
    );
  }
}
