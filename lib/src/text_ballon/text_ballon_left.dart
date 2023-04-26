import 'package:flutter/material.dart';
import 'package:ploogin_chat/src/chat_baloon/chat_baloon_left.dart';

class TextBallonLeft extends StatelessWidget {
  final String text;

  const TextBallonLeft(
      this.text, {
        Key? key,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChatBallonLeft(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Text(text),
      ),
    );
  }
}
