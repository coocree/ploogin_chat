import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:font_awesome_flutter_example/example_icon.dart';

void main() {
  runApp( Example());
}

class Example extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  ExamplePage(),
    );
  }
}

class ExamplePage extends StatefulWidget {

  @override
  State<ExamplePage> createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Wrap(
          children: [
            Container(
              width: 100,
              height: 100,
              child: const Icon(
                FontAwesomeIcons.IconPeople,
                color: Colors.black54,
                size: 22,
              )
            ),
            Container(
                width: 100,
                height: 100,
                child: Icon(
                  FontAwesomeIcons.IconPlay,
                  color: Colors.black54,
                  size: 22,
                )
            ),
            Container(
                width: 100,
                height: 100,
                child: Icon(
                  FontAwesomeIcons.IconSearch,
                  color: Colors.black54,
                  size: 22,
                )
            ),
            Container(
                width: 100,
                height: 100,
                child: const Icon(
                  FontAwesomeIcons.IconSend,
                  color: Colors.black54,
                  size: 22,
                )
            ),
            Container(
                width: 100,
                height: 100,
                child: Icon(
                  FontAwesomeIcons.IconTarget,
                  color: Colors.redAccent,
                  size: 50,
                )
            ),
            Container(
                width: 100,
                height: 100,
                child: Icon(
                  FontAwesomeIcons.IconTrophy,
                  color: Colors.black54,
                  size: 22,
                )
            ),
            Container(
                width: 100,
                height: 100,
                child: const Icon(
                  FontAwesomeIcons.IconArrowLeft,
                  color: Colors.black54,
                  size: 22,
                )
            ),
            Container(
                width: 100,
                height: 100,
                child: const Icon(
                  FontAwesomeIcons.IconBalloonLeft,
                  color: Colors.black54,
                  size: 22,
                )
            ),
            Container(
                width: 100,
                height: 100,
                child: const Icon(
                  FontAwesomeIcons.IconBalloonRight,
                  color: Colors.black54,
                  size: 22,
                )
            ),
            Container(
                width: 100,
                height: 100,
                child: const Icon(
                  FontAwesomeIcons.IconCard,
                  color: Colors.black54,
                  size: 22,
                )
            ),
            Container(
                width: 100,
                height: 100,
                child: const Icon(
                  FontAwesomeIcons.IconClose,
                  color: Colors.black54,
                  size: 22,
                )
            ),
            Container(
                width: 100,
                height: 100,
                child: const Icon(
                  FontAwesomeIcons.IconDoubt,
                  color: Colors.black54,
                  size: 22,
                )
            ),
            Container(
                width: 100,
                height: 100,
                child: const Icon(
                  FontAwesomeIcons.IconKeyboard,
                  color: Colors.black54,
                  size: 22,
                )
            ),
            Container(
                width: 100,
                height: 100,
                child: const Icon(
                  FontAwesomeIcons.IconMenuVert,
                  color: Colors.black54,
                  size: 22,
                )
            ),
            Container(
                width: 100,
                height: 100,
                child: const Icon(
                  FontAwesomeIcons.IconMic,
                  color: Colors.black54,
                  size: 22,
                )
            ),
            Container(
                width: 100,
                height: 100,
                child: const Icon(
                  FontAwesomeIcons.IconPeopleGroup,
                  color: Colors.black54,
                  size: 22,
                )
            ),
          ],
        ),
      ),
    );
  }
}