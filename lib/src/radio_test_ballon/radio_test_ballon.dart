import 'package:flutter/material.dart';
import 'package:ploogin_chat/src/chat_left_baloon.dart';
import 'package:ploogin_chat/src/radio_test_ballon/radio_group_button_builder.dart';

class RadioTestBallon extends StatefulWidget {
  const RadioTestBallon({super.key});

  @override
  State<RadioTestBallon> createState() => _RadioTestBallonState();
}

class _RadioTestBallonState extends State<RadioTestBallon> {
  // Exemplo de uso do widget RadioGroupButtonBuilder
  List<RadioOptionConfig> options = [
    RadioOptionConfig(label: 'Pizzas', value: 'Pizzas'),
    RadioOptionConfig(label: 'Burgers', value: 'Burgers'),
    RadioOptionConfig(label: 'Comidas', value: 'Comidas'),
  ];



  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:  BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.6),
      child: ChatLeftBallon(
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
              RadioGroupButtonBuilder(
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
      ),
    );
  }
}
