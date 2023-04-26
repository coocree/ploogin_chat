import 'package:flutter/material.dart';
import 'package:ploogin_chat/src/chat_baloon/chat_baloon_left.dart';

class VideoBallon extends StatelessWidget {
  final String text;

  const VideoBallon(
    this.text, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChatBallonLeft(
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: 340,
        ),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
                child: Image.network(
                  'https://media-manager.noticiasaominuto.com/1920/naom_5ff0540e4ef5a.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Text(text),
            ),
          ],
        ),
      ),
    );
  }
}
