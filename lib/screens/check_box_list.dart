import 'package:flutter/material.dart';

class CheckBox extends StatelessWidget {
  const CheckBox(this.title, this.onTap, this.value, {super.key});

  final String title;
  final bool value;
  final ValueChanged onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Text(title), Checkbox(value: value, onChanged: onTap)],
    );
  }
}
