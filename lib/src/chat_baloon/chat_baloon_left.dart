import 'package:flutter/material.dart';
import 'package:ploogin_chat/src/chat_baloon/chat_ballon_arrow.dart';
import 'package:ploogin_chat/src/chat_baloon/chat_ballon_button.dart';

class ChatBallonLeft extends StatefulWidget {
  final double borderRadiusSize;
  final Widget child;

  ChatBallonLeft({
    Key? key,
    this.borderRadiusSize = 14,
    required this.child,
  }) : super(key: key);

  @override
  State<ChatBallonLeft> createState() => _ChatBallonLeftState();
}

class _ChatBallonLeftState extends State<ChatBallonLeft> {
  bool onHover = false;

  double maxWidth(BuildContext context, BoxConstraints constraints) {
    double screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth >= 715) {
      return 590;
    }
    return double.infinity;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onHover: (value) {
        setState(() {
          onHover = value;
        });
      },
      onTap: () {},
      child: LayoutBuilder(
        builder: (_, BoxConstraints constraints) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  color: Color(0XFFFCB813),
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
              ),
              SizedBox(
                height: 20,
                child: CustomPaint(
                  size: const Size.square(20),
                  painter: ChatBallonArrow(),
                ),
              ),
              Container(
                width: constraints.maxWidth - 40 - 20,
                constraints: BoxConstraints(
                  maxWidth: maxWidth(context, constraints),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: Row(
                    children: [
                      Flexible(
                        fit: FlexFit.loose,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFFF2F2F2),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(widget.borderRadiusSize),
                              topRight: Radius.circular(widget.borderRadiusSize),
                              bottomRight: Radius.circular(widget.borderRadiusSize),
                            ),
                          ),
                          child: widget.child,
                        ),
                      ),
                      onHover ? const ChatBallonButton() : const SizedBox(width: 38),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
