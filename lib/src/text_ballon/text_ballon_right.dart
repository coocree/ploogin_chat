import 'package:flutter/material.dart';
import 'package:ploogin_chat/src/chat_baloon/chat_baloon_right.dart';
class TextBallonRight extends StatelessWidget {
  final String text;

  const TextBallonRight(
      this.text, {
        Key? key,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChatBallonRight(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Text(text),
      ),
    );
  }
}

