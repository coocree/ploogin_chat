import 'package:flutter/material.dart';
import 'package:ploogin_chat/package.dart';

void main() {
  runApp(const Example());
}

class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExamplePage(),
    );
  }
}

class ExamplePage extends StatefulWidget {
  const ExamplePage({super.key});

  @override
  State<ExamplePage> createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            constraints: const BoxConstraints(maxWidth: 1024),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                TestBalloonRadio(),
                SizedBox(height: 20),
                TextBalloonLeft(
                    "Maecenas aliquam enim at sapien convallis, non lobortis neque molestie. Vivamus dictum tortor metus, id gravida dui faucibus ac. Donec at bibendum urna."),
                SizedBox(height: 10),
                TextBalloonLeft("Donec at bibendum urna."),
                SizedBox(height: 10),
                TextBalloonRight(
                    colorDefault: Colors.green,
                  weight: 0.8,
                    "Maecenas aliquam enim at sapien convallis, non lobortis neque molestie. Vivamus dictum tortor metus, id gravida dui faucibus ac. Donec at bibendum urna."),
                SizedBox(height: 10),
                TextBalloonLeft("Vivamus dictum tortor metus, id gravida dui faucibus ac. Donec at bibendum urna."),
                SizedBox(height: 10),
                VideoBalloon("Vivamus dictum tortor metus, id gravida dui faucibus ac. Donec at bibendum urna."),
                SizedBox(height: 10),
                TextBalloonRight(
                  colorDefault: Colors.red,
                  //borderRadiusSize: 20,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  weight: 0.2,
                    "Maecenas aliquam enim at sapien convallis, non lobortis neque molestie. Vivamus dictum tortor metus, id gravida dui faucibus ac. Donec at bibendum urna."),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
