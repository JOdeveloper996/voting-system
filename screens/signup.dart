import 'package:jordanvote/Component/RegButton.dart';
import 'package:jordanvote/screens/elector.dart';
import 'package:jordanvote/screens/representative.dart';
import 'package:flutter/material.dart';
import 'package:jordanvote/Component/TextField.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

TextEditingController usernameController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController passwordCController = TextEditingController();
TextEditingController emailController = TextEditingController();

class _SignUpScreenState extends State<SignUpScreen> {
  bool? isChecked = false;
  String? groupValue;

  String selectedSnack = 'none selected';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade400,
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              const SizedBox(height: 50),
              const Icon(Icons.lock, size: 100, color: Colors.white),
              const SizedBox(height: 50),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Center(
                  child: Text(
                    "Create your account !",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 35),
              TFComponent(
                controller: usernameController,
                obscureText: false,
                hintText: "User Name",
              ),
              const SizedBox(height: 25),
              TFComponent(
                controller: emailController,
                hintText: "Email",
                obscureText: false,
              ),
              const SizedBox(height: 25),
              TFComponent(
                controller: passwordController,
                hintText: "Password",
                obscureText: true,
              ),
              const SizedBox(height: 25),
              TFComponent(
                controller: passwordCController,
                hintText: "Confirm Password",
                obscureText: true,
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "What is your personality?",
                      style: TextStyle(fontSize: 25),
                    ),
                    const SizedBox(height: 25), // Space between the question and radio buttons
                    Row(
                      children: [
                        Radio<String>(
                          value: "representative",
                          groupValue: groupValue,
                          onChanged: (String? value) {
                            setState(() {
                              groupValue = value;
                            });
                          },
                        ),
                        const Text(
                          "Representative",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        const SizedBox(width: 20), // Space between the two radio buttons
                        Radio<String>(
                          value: "elector",
                          groupValue: groupValue,
                          onChanged: (String? value) {
                            setState(() {
                              groupValue = value;
                            });
                          },
                        ),
                        const Text(
                          "Elector",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              MyButton(onTap: () => handleNavigation(context, groupValue),),
            ],
          ),
        ),
      ),
    );
  }
static void handleNavigation(BuildContext context, String? groupValue) {
    if (groupValue == null) {
      // No radio button is selected
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
        content: Text("Please select your personality before proceeding.",style: TextStyle(fontSize:25,color: Colors.white,),
        ),
      ),);
    } else {
      // Navigate based on the selected value
      if (groupValue == "representative") {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Representative()),
        );
      } else if (groupValue == "elector") {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Elector()),
        );
      }
    }
  }
}