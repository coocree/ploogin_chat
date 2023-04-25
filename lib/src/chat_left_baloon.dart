import 'package:flutter/material.dart';

class ChatLeftBallon extends StatelessWidget {
  final double borderRadiusSize;
  final Widget child;

  const ChatLeftBallon({
    Key? key,
    required this.child,
    this.borderRadiusSize = 14,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
      border: TableBorder.all(
        color: Colors.green,
        width: 1,
      ),
      columnWidths: const {
        0: FixedColumnWidth(40),
        1: FixedColumnWidth(20),
      },
      children: [
        TableRow(
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
                painter: _DiagonalHalfAndHalfPainter(),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red, width: 1),
                color: const Color(0xFFF2F2F2),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(borderRadiusSize),
                  topRight: Radius.circular(borderRadiusSize),
                  bottomRight: Radius.circular(borderRadiusSize),
                ),
              ),
              child: Container(
                constraints: BoxConstraints(
                  minWidth: 100,
                  maxWidth: 200,
                ),
                width: double.infinity,
                child: child,
              ),
            ),
          ],
        ),
      ],
    );
  }
}


class _DiagonalHalfAndHalfPainter extends CustomPainter {
  _DiagonalHalfAndHalfPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final path = Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height)
      ..close();

    const gradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Color(0xFFF2F2F2), Color(0xFFF2F2F2)],
    );

    final paint = Paint()..shader = gradient.createShader(path.getBounds());

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
