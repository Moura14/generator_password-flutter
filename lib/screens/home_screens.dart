import 'package:flutter/material.dart';
import 'package:generator_password/screens/check_box_list.dart';
import 'package:random_password_generator/random_password_generator.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  final password = RandomPasswordGenerator();
  final bool _isWithLetters = false;
  final bool _isWithUppercase = false;
  final bool _isWithNumbers = false;
  final bool _isWithSpecial = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'Gerador de senhas',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  CheckBoxList('Lower Case', _isWithLetters),
                  CheckBoxList('Upper case', _isWithUppercase),
                  CheckBoxList('Números', _isWithNumbers),
                  CheckBoxList('Símbolos', _isWithSpecial),
                  const Row(
                    children: [],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                      width: 400,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black),
                          onPressed: () {
                            final newPassword = password.randomPassword(
                                numbers: _isWithNumbers,
                                uppercase: _isWithUppercase,
                                letters: _isWithLetters,
                                specialChar: _isWithSpecial);
                            print(newPassword);
                          },
                          child: const Text(
                            'Gerar senha',
                            style: TextStyle(color: Colors.white),
                          ))),
                  SizedBox(
                      width: 400,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black),
                          onPressed: () {},
                          child: const Text(
                            'Copiar senha',
                            style: TextStyle(color: Colors.white),
                          ))),
                ],
              )),
        ));
  }
}
