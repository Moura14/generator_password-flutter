import 'package:flutter/material.dart';

class CheckBoxList extends StatefulWidget {
  const CheckBoxList(this.title, this.value, {super.key});

  final String title;
  final bool value;

  @override
  State<CheckBoxList> createState() => _CheckBoxListState();
}

class _CheckBoxListState extends State<CheckBoxList> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
        value: _isSelected,
        title: Text(widget.title),
        onChanged: (bool? value) {
          setState(() {
            _isSelected = value!;
          });
        });
  }
}
