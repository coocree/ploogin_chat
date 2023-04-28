import 'package:flutter/material.dart';
import 'package:ploogin_chat/src/chat_balloon/chat_balloon_left.dart';
import 'package:ploogin_chat/src/test_balloon/radio/test_balloon_radio_builder.dart';
import 'package:ploogin_chat/src/test_balloon/radio/test_balloon_radio_option.dart';

class TestBalloonRadio extends StatefulWidget {
  const TestBalloonRadio({super.key});

  @override
  State<TestBalloonRadio> createState() => _TestBalloonRadioState();
}

class _TestBalloonRadioState extends State<TestBalloonRadio> {
  // Exemplo de uso do widget TestBalloonRadioBuilder
  List<TestBalloonRadioOption> options = [
    TestBalloonRadioOption(label: 'Pizzas', value: 'Pizzas'),
    TestBalloonRadioOption(label: 'Burgers', value: 'Burgers'),
    TestBalloonRadioOption(label: 'Comidas', value: 'Comidas'),
  ];

  final Color colorDefault = const Color(0xFF414141);
  final Color colorSelected = const Color(0xFFFFFFFF);

  Color getColor() {
    if (selected) {
      return colorSelected;
    }
    return colorDefault;
  }

  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return ChatBalloonLeft(
      selected: selected,
      onChanged: (value) {
        setState(() {
          selected = value;
          print('value: $value');
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "What do you want to eat?",
              style: TextStyle(fontSize: 18, color: getColor()),
            ),
            const SizedBox(height: 10),
            TestBalloonRadioBuilder(
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
                child: Text(
                  "Opção errada, clique aqui para saber mais... Opção errada, clique aqui para saber mais... Opção errada, clique aqui para saber mais... Opção errada, clique aqui para saber mais...",
                  style: TextStyle(fontSize: 15, color: getColor()),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
