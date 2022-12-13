import 'package:flutter/material.dart';

AppBar buildAppBar({required String title}) => AppBar(
      title: Text(title),
      centerTitle: true,
    );

MediaQueryData buildMediaQuery(BuildContext context) => MediaQuery.of(context);

Widget buildButton({
  required String title,
  required void Function()? onPressed,
}) =>
    SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
