import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:s2k_pay/helpers/ui_controller.dart';
import 'package:s2k_pay/helpers/ui_helper.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  //Username and password controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final uiController = context.watch<UIController>();
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(title: "Connexion"),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: buildMediaQuery(context).size.height * 0.02,
                  ),
                  const Text(
                    "Connexion",
                    style: TextStyle(
                      fontSize: 30,
                    ),
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
                    controller: passwordController,
                    obscureText: uiController.isPasswordObscured,
                    maxLength: 50,
                    suffixIcon: IconButton(
                      onPressed: () => uiController.setIsPasswordObscured(),
                      icon: Icon(
                        uiController.isPasswordObscured
                            ? Icons.visibility_rounded
                            : Icons.visibility_off_rounded,
                      ),
                    ),
                    labelText: "Entrez votre mot de passe",
                  ),
                  SizedBox(
                    height: buildMediaQuery(context).size.height * 0.04,
                  ),
                  buildButton(
                    title: "Connexion",
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
