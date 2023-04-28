import 'package:flutter/material.dart';

class ChatBalloonTitle extends StatelessWidget {
  final Widget child;


  const ChatBalloonTitle({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double borderRadiusSize = 8;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(

          decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(borderRadiusSize),
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          padding: const EdgeInsets.only(left: 8, top: 4, bottom: 4, right: 12),
          child: const Text("Na tecnologia, a Inteligência Artificial", style: TextStyle(color: Colors.white, fontSize: 13),),
        ),
        child,
      ],
    );
  }
}
