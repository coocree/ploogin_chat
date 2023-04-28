import 'package:flutter/material.dart';
import 'package:ploogin_chat/src/chat_balloon/chat_balloon_left.dart';

class VideoBalloon extends StatefulWidget {
  final String text;
  final double weight;
  final double borderRadiusSize;

  const VideoBalloon(
    this.text, {
    this.weight = 0.5,
    this.borderRadiusSize = 4,
    Key? key,
  }) : super(key: key);

  @override
  State<VideoBalloon> createState() => _VideoBalloonState();
}

class _VideoBalloonState extends State<VideoBalloon> {
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
      borderRadiusSize: widget.borderRadiusSize,
      selected: selected,
      onChanged: (value) {
        setState(() {
          selected = value;
          print('value: $value');
        });
      },
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: 340,
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(widget.borderRadiusSize),
                  topRight: Radius.circular(widget.borderRadiusSize),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(widget.borderRadiusSize),
                  topRight: Radius.circular(widget.borderRadiusSize),
                ),
                child: Image.network(
                  'https://media-manager.noticiasaominuto.com/1920/naom_5ff0540e4ef5a.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Text(widget.text),
            ),
          ],
        ),
      ),
    );
  }
}
