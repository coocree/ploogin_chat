import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ploogin_chat/src/chat_balloon/chat_balloon_arrow.dart';
import 'package:ploogin_chat/src/chat_balloon/chat_balloon_title.dart';

class ChatBalloonLeft extends StatelessWidget {
  final double borderRadiusSize;
  final Widget child;
  final double weight;

  final Color colorRight;
  final Color colorErro;
  final Color colorDefault = const Color(0xFFF2F2F2);
  final Color colorSelected = const Color(0xFF0096C5);
  final ValueChanged<bool> onChanged;
  final bool selected;

  ChatBalloonLeft({
    Key? key,
    this.weight = 0.5,
    this.borderRadiusSize = 8,
    this.colorRight = const Color(0xFFEDFFE4),
    this.colorErro = const Color(0xFFFFE4E4),
    required this.onChanged,
    required this.child,
    this.selected = false,
  }) : super(key: key);

  double maxWidth(BuildContext context, BoxConstraints constraints) {
    double screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth >= 590) {
      return 590;
    }
    return double.infinity;
  }

  Color getColor(double weight) {
    if (selected) {
      return colorSelected;
    } else if (weight <= 0.3) {
      return colorErro;
    } else if (weight >= 0.7) {
      return colorRight;
    }
    return colorDefault;
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor = getColor(weight);

    return LayoutBuilder(
      builder: (_, BoxConstraints constraints) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              onTap: () {
                onChanged(!selected);
              },
              child: SizedBox(
                  width: 30,
                  height: 25,
                  child: Stack(
                    children: [
                      SizedBox(
                        width: 25,
                        height: 25,
                        child: Icon(
                          FontAwesomeIcons.IconBalloonLeft,
                          color: selected ? const Color(0xFF0096C5) : Colors.black54,
                          size: 18,
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: SizedBox(
                          height: 10,
                          child: CustomPaint(
                            size: const Size.square(10),
                            painter: ChatBalloonArrow(backgroundColor),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
            Container(
              width: constraints.maxWidth - 20 - 25,
              constraints: BoxConstraints(
                maxWidth: maxWidth(context, constraints),
              ),
              child: Row(
                children: [
                  Flexible(
                    fit: FlexFit.loose,
                    child: Container(
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(borderRadiusSize),
                          topRight: Radius.circular(borderRadiusSize),
                          bottomRight: Radius.circular(borderRadiusSize),
                        ),
                      ),
                      child: ChatBalloonTitle(
                        child: child,
                      )
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
