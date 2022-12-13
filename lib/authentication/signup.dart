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
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(title: "Inscription"),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: buildMediaQuery(context).size.height * 0.02,
              ),
              const Text(
                "S'inscrire",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: buildMediaQuery(context).size.height * 0.04,
              ),
              buildFormInput(
                labelText: "Entrez votre nom complet",
                suffixIcon: const Icon(Icons.person),
              ),
              SizedBox(
                height: buildMediaQuery(context).size.height * 0.04,
              ),
              buildFormInput(
                labelText: "Entrez votre nom d'utilisateur",
                suffixIcon: const Icon(Icons.person),
              ),
              SizedBox(
                height: buildMediaQuery(context).size.height * 0.04,
              ),
              buildFormInput(
                labelText: "Entrez votre mot de passe",
                suffixIcon: const Icon(Icons.visibility),
              ),
              SizedBox(
                height: buildMediaQuery(context).size.height * 0.04,
              ),
              buildFormInput(
                labelText: "Confirmez votre mot de passe",
                suffixIcon: const Icon(Icons.visibility),
              ),
              SizedBox(
                height: buildMediaQuery(context).size.height * 0.04,
              ),
              buildButton(
                title: "S'inscrire",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
