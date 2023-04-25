import 'package:flutter/material.dart';
import 'package:ploogin_chat/src/chat_left_baloon.dart';

class TextLeftBallon extends StatelessWidget {
  final String text;

  const TextLeftBallon(
    this.text, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.6),
      child: ChatLeftBallon(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Text(text),
        ),
      ),
    );
  }
}
