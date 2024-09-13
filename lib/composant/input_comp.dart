import 'package:flutter/material.dart';
import 'package:ika_ticket/composant/color_comp.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final bool isPassword;

  InputField({required this.hintText, this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: AppColors.inputColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}