import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:s2k_pay/helpers/ui_controller.dart';
import 'package:s2k_pay/helpers/ui_helper.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();

  //Alls Controller
  final fullNameController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordConfirmController = TextEditingController();

  @override
  void dispose() {
    fullNameController.dispose();
    usernameController.dispose();
    passwordController.dispose();
    passwordConfirmController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final uiController = context.watch<UIController>();
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(title: "Inscription"),
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
                    "S'inscrire",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    height: buildMediaQuery(context).size.height * 0.04,
                  ),
                  buildFormInput(
                    controller: fullNameController,
                    labelText: "Entrez votre nom complet",
                    suffixIcon: const Icon(Icons.person),
                  ),
                  SizedBox(
                    height: buildMediaQuery(context).size.height * 0.04,
                  ),
                  buildFormInput(
                    controller: usernameController,
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
                  buildFormInput(
                    controller: passwordConfirmController,
                    obscureText: uiController.isPasswordConfirmObscured,
                    labelText: "Confirmez votre mot de passe",
                    suffixIcon: IconButton(
                      onPressed: () =>
                          uiController.setIsPasswordConfirmObscured(),
                      icon: Icon(
                        uiController.isPasswordConfirmObscured
                            ? Icons.visibility_rounded
                            : Icons.visibility_off_rounded,
                      ),
                    ),
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
        ),
      ),
    );
  }
}
