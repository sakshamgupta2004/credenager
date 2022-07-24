import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/bg.png'),
          fit: BoxFit.fill,
        ),
      ),
      padding: const EdgeInsets.all(20),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Email Id",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
