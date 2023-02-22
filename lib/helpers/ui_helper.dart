import 'package:flutter/material.dart';

AppBar buildAppBar({required String title}) => AppBar(
      title: Text(title),
      centerTitle: true,
    );

Widget buildFormInput({
  TextEditingController? controller,
  bool obscureText = false,
  int? maxLength,
  String? labelText,
  Widget? suffixIcon,
}) =>
    TextFormField(
      controller: controller,
      obscureText: obscureText,
      maxLength: maxLength,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        labelText: labelText,
        suffixIcon: suffixIcon,
      ),
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
