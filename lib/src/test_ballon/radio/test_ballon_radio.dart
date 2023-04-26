import 'package:flutter/material.dart';
import 'package:ploogin_chat/src/chat_baloon/chat_baloon_left.dart';
import 'package:ploogin_chat/src/test_ballon/radio/test_ballon_radio_builder.dart';
import 'package:ploogin_chat/src/test_ballon/radio/test_ballon_radio_option.dart';

class TestBallonRadio extends StatefulWidget {
  const TestBallonRadio({super.key});

  @override
  State<TestBallonRadio> createState() => _TestBallonRadioState();
}

class _TestBallonRadioState extends State<TestBallonRadio> {
  // Exemplo de uso do widget TestBallonRadioBuilder
  List<TestBallonRadioOption> options = [
    TestBallonRadioOption(label: 'Pizzas', value: 'Pizzas'),
    TestBallonRadioOption(label: 'Burgers', value: 'Burgers'),
    TestBallonRadioOption(label: 'Comidas', value: 'Comidas'),
  ];



  @override
  Widget build(BuildContext context) {
    return ChatBallonLeft(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "What do you want to eat?",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            TestBallonRadioBuilder(
              rightAnswer: 'Pizzas',
              options: options,
              onChanged: (value) {
                // faz alguma coisa com o valor selecionado
                print('Valor selecionado: $value');
              },
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {
                print('Clicou no texto');
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: const Text(
                  "Opção errada, clique aqui para saber mais... Opção errada, clique aqui para saber mais... Opção errada, clique aqui para saber mais... Opção errada, clique aqui para saber mais...",
                  style: TextStyle(fontSize: 15, color: Colors.black54),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
