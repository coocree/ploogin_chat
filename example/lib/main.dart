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
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            RadioTestBallon(),
            SizedBox(height: 20,),
            TextLeftBallon("Maecenas aliquam enim at sapien convallis, non lobortis neque molestie. Vivamus dictum tortor metus, id gravida dui faucibus ac. Donec at bibendum urna."),
          ],
        ),
      ),
    );
  }
}