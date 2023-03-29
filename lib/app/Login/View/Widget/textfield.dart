import 'package:flutter/material.dart';
import 'package:noviindus/widget/constants/app_colors.dart';
// import 'package:noviindus/app/Login/Controller/login_controller.dart';
// import 'package:provider/provider.dart';

class TextFieldWidgets extends StatelessWidget {
  const TextFieldWidgets({
    Key? key,
    required this.hint,
    required this.validator,
    required this.controller,
    required this.keybord,
    this.suffIcon,
    required this.obsc,
  }) : super(key: key);
  final TextEditingController? controller;
  final TextInputType keybord;
  final String hint;
  final String validator;
  final bool obsc;
  final Widget? suffIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: bgGrey,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            blurRadius: 1,
            color: bgGrey,
          )
        ],
      ),
      child: TextFormField(
        textAlign: TextAlign.center,
        controller: controller,
        obscureText: obsc,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          suffixIcon: suffIcon,
        ),
        keyboardType: keybord,
      ),
    );
  }
}
