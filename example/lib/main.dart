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
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          constraints: const BoxConstraints(maxWidth: 1024),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children:  [
             // TestBallonRadio(),
              SizedBox(
                height: 20,
              ),
              TextBallonLeft(
                  "Maecenas aliquam enim at sapien convallis, non lobortis neque molestie. Vivamus dictum tortor metus, id gravida dui faucibus ac. Donec at bibendum urna."),
              SizedBox(height: 10),
              TextBallonLeft("Donec at bibendum urna."),
              SizedBox(height: 10),
              TextBallonLeft("Vivamus dictum tortor metus, id gravida dui faucibus ac. Donec at bibendum urna."),
              SizedBox(height: 10),
              //VideoBallon("Vivamus dictum tortor metus, id gravida dui faucibus ac. Donec at bibendum urna."),
              //SizedBox(height: 10),
              TextBallonRight("Maecenas aliquam enim at sapien convallis, non lobortis neque molestie. Vivamus dictum tortor metus, id gravida dui faucibus ac. Donec at bibendum urna."),
            ],
          ),
        ),
      ),
    );
  }
}
