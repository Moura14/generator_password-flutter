import 'package:flutter/material.dart';
import 'package:generator_password/screens/check_box_list.dart';
import 'package:random_password_generator/random_password_generator.dart';
import 'package:clipboard/clipboard.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  final password = RandomPasswordGenerator();
  String newPassoword = '';
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
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                      width: 400,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black),
                          onPressed: () {
                            newPassoword = password.randomPassword(
                                numbers: _isWithNumbers,
                                uppercase: _isWithUppercase,
                                letters: _isWithLetters,
                                specialChar: _isWithSpecial);
                            print(newPassoword);
                            setState(() {});
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
                          onPressed: () {
                            FlutterClipboard.copy(newPassoword)
                                .then((value) => print('Copiado'));
                          },
                          child: const Text(
                            'Copiar senha',
                            style: TextStyle(color: Colors.white),
                          ))),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    newPassoword,
                    style: const TextStyle(fontSize: 30, color: Colors.black),
                  )
                ],
              )),
        ));
  }
}
