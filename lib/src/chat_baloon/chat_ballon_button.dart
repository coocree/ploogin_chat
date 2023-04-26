import 'package:flutter/material.dart';

class ChatBallonButton extends StatelessWidget {
  const ChatBallonButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        print('info');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
              width: 1,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(50)),
          ),
          alignment: Alignment.center,
          width: 18,
          height: 18,
          child: const Icon(
            Icons.reply_sharp,
            size: 14,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
