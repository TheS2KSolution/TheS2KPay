import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:s2k_pay/authentication/login.dart';
import 'package:s2k_pay/authentication/signup.dart';
import 'package:s2k_pay/helpers/ui_controller.dart';
import 'package:s2k_pay/helpers/ui_helper.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UIController(),
        )
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'S2KPay',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (_) => const AppHome(),
        "/login": (_) => const Login(),
        "/signup": (_) => const Signup(),
      },
    );
  }
}

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Bienvenu sur l'application !",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: buildMediaQuery(context).size.height * 0.08,
                ),
                buildButton(
                  title: "Connexion",
                  onPressed: () => Navigator.pushNamed(context, "/login"),
                ),
                SizedBox(
                  height: buildMediaQuery(context).size.height * 0.02,
                ),
                buildButton(
                  title: "S'inscrire",
                  onPressed: () => Navigator.pushNamed(context, "/signup"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
