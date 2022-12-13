import 'package:flutter/material.dart';
import 'package:s2k_pay/helpers/ui_helper.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "S'inscrire"),
      body: const Center(
        child: Text("S'inscrire"),
      ),
    );
  }
}
