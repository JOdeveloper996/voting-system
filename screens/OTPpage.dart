// ignore_for_file: file_names

import 'package:flutter/material.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override 
  State<OtpPage> createState() => _OtppageState();
}
TextEditingController otp1=TextEditingController();
TextEditingController otp2=TextEditingController();
TextEditingController otp3=TextEditingController();
TextEditingController otp4=TextEditingController();
TextEditingController otp5=TextEditingController();
TextEditingController otp6=TextEditingController();
class _OtppageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
     AppBar(title: Title(color: Colors.white,child: const Center(child:Text("OTP")),),);
    return const Scaffold(

    

      );
  }
}