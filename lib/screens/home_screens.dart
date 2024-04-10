import 'package:flutter/material.dart';
import 'package:generator_password/screens/check_box_list.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

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
                  const CheckBoxList('Lower Case', false),
                  const CheckBoxList('Upper case', false),
                  const CheckBoxList('Números', false),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: const SizedBox(
                          width: 100,
                          child: TextField(
                            decoration: InputDecoration(labelText: 'Tamanho'),
                          ),
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            print('Faz Alguma coisa');
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black),
                          child: const Text(
                            '+',
                            style: TextStyle(color: Colors.white),
                          )),
                      const SizedBox(
                        width: 16,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            print('Faz outra coisa');
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black),
                          child: const Text(
                            '-',
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                      width: 400,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black),
                          onPressed: () {},
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
                  const TextField()
                ],
              )),
        ));
  }
}
