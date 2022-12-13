import 'package:flutter/material.dart';
import 'package:s2k_pay/helpers/ui_helper.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "Connexion"),
      body: const Center(
        child: Text("Login"),
      ),
    );
  }
}
