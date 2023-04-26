import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:ploogin_chat/src/chat_baloon/chat_ballon_arrow.dart';

class ChatBallonRight extends StatelessWidget {
  final double borderRadiusSize;
  final Widget child;

  ChatBallonRight({
    Key? key,
    this.borderRadiusSize = 14,
    required this.child,
  }) : super(key: key);

  double maxWidth(BuildContext context, BoxConstraints constraints) {
    double screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth >= 715) {
      return 590;
    }
    return double.infinity;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, BoxConstraints constraints) {
        return Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
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
              Container(
                width: constraints.maxWidth - 80 - 20,
                constraints: BoxConstraints(
                  maxWidth: maxWidth(context, constraints),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Flexible(
                      fit: FlexFit.loose,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFF2F2F2),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(borderRadiusSize),
                            topRight: Radius.circular(borderRadiusSize),
                            bottomLeft: Radius.circular(borderRadiusSize),
                          ),
                        ),
                        child: child,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                      child: Transform(
                        alignment: Alignment.centerRight,
                        transform: Matrix4.rotationX(-math.pi),
                        child: RotatedBox(
                          quarterTurns: 2,
                          child: CustomPaint(
                            size: const Size.square(20),
                            painter: ChatBallonArrow(),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}


