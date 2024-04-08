import 'package:flutter/material.dart';
import 'package:generator_password/screens/check_box_list.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gerador de senhas'),
        centerTitle: true,
      ),
      body: Container(
          padding: const EdgeInsets.all(20),
          child: const Column(
            children: [
              CheckBoxList('Lower Case', false),
              CheckBoxList('Upper case', false),
              CheckBoxList('Números', false)
            ],
          )),
    );
  }
}
