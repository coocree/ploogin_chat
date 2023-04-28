import 'package:flutter/material.dart';
import 'package:ploogin_chat/src/chat_balloon/chat_balloon_left.dart';

class TextBalloonLeft extends StatefulWidget {
  final String text;
  final double weight;

  const TextBalloonLeft(
      this.text, {
        this.weight = 0.5,
        Key? key,
      }) : super(key: key);

  @override
  State<TextBalloonLeft> createState() => _TextBalloonLeftState();
}

class _TextBalloonLeftState extends State<TextBalloonLeft> {
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
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Text(widget.text, style: TextStyle(fontSize: 14, color: getColor())),
      ),
    );
  }
}
