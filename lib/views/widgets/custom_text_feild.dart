import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key, required this.hint});
  final Widget hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hint: hint,
        fillColor: Color(0xffFAFAFA),
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffFAFAFA)),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),

        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffFAFAFA)),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffFAFAFA)),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
    );
  }
}
