import 'package:flutter/material.dart';
import 'package:ploogin_chat/src/chat_balloon/chat_balloon_right.dart';

class TextBalloonRight extends StatefulWidget {
  final String text;
  final double weight;
  final double borderRadiusSize;
  final EdgeInsets padding;
  final Color colorDefault;
  final Color colorSelected;

  const TextBalloonRight(
    this.text, {
    this.weight = 0.5,
    this.borderRadiusSize = 4,
    this.padding = const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
    this.colorDefault = const Color(0xFF414141),
    this.colorSelected = const Color(0xFFFFFFFF),
    Key? key,
  }) : super(key: key);

  @override
  State<TextBalloonRight> createState() => _TextBalloonRightState();
}

class _TextBalloonRightState extends State<TextBalloonRight> {


  Color getColor() {
    if (selected) {
      return widget.colorSelected;
    }
    return widget.colorDefault;
  }

  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return ChatBalloonRight(
      borderRadiusSize: widget.borderRadiusSize,
      selected: selected,
      onChanged: (value) {
        setState(() {
          selected = value;
          print('value: $value');
        });
      },
      weight: widget.weight,
      child: Padding(
        padding: widget.padding,
        child: Text(widget.text, style: TextStyle(fontSize: 14, color: getColor())),
      ),
    );
  }
}
