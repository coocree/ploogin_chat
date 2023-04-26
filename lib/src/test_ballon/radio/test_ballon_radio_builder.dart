import 'package:flutter/material.dart';
import 'package:ploogin_chat/src/test_ballon/radio/test_ballon_radio_option.dart';



// StatefulWidget para construir o grupo de botões de rádio
class TestBallonRadioBuilder extends StatefulWidget {
  final List<TestBallonRadioOption> options; // Lista de opções a serem exibidas
  final ValueChanged<dynamic> onChanged; // Função chamada quando o valor selecionado é alterado
  final dynamic rightAnswer; // Valor correto da resposta

  const TestBallonRadioBuilder({Key? key, required this.options, required this.onChanged, required this.rightAnswer}) : super(key: key);

  @override
  _TestBallonRadioBuilderState createState() => _TestBallonRadioBuilderState();
}

// State para gerenciar o estado interno do grupo de botões de rádio
class _TestBallonRadioBuilderState extends State<TestBallonRadioBuilder> {
  dynamic _radioValue; // Valor atualmente selecionado

  @override
  Widget build(BuildContext context) {
    // Constrói uma coluna com as opções de rádio
    return Column(
      children: widget.options
          .map((option) => Container(
                margin: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: _radioValue == option.value
                        ? widget.rightAnswer == option.value
                            ? Colors.green
                            : Colors.red
                        : Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                // Adiciona um InkWell para capturar eventos de toque
                child: InkWell(
                  highlightColor: Colors.transparent,
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                  onTap: () {
                    // Atualiza o valor selecionado e notifica o onChanged
                    setState(() {
                      _radioValue = option.value;
                    });
                    widget.onChanged({"label": option.value, "status": widget.rightAnswer == option.value ? "right" : "wrong"});
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                    child: Row(
                      children: [
                        // Cria a bolinha da opção de rádio
                        Container(
                          width: 16.0,
                          height: 16.0,
                          decoration: BoxDecoration(
                            color: _radioValue == option.value
                                ? widget.rightAnswer == option.value
                                    ? Colors.green
                                    : Colors.red
                                : Colors.grey,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              color: const Color(0xFFEBEBEB),
                              width: 4,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        // Exibe o rótulo da opção de rádio
                        Text(
                          option.label,
                          style: TextStyle(
                            color: _radioValue == option.value
                                ? widget.rightAnswer == option.value
                                    ? Colors.green
                                    : Colors.red
                                : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ))
          .toList(),
    );
  }
}
