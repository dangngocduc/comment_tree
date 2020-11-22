import 'dart:developer' as developer;
import 'package:comment_tree/data/comment.dart';
import 'package:flutter/material.dart';

class RootCommentWidget extends StatelessWidget {

  final PreferredSizeWidget avatar;
  final Widget content;

  RootCommentWidget(this.avatar, this.content);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            avatar,
            SizedBox(width: 8,),
            Expanded(
              child: content,
            )
          ],
        ),
      ),
      painter: RootPainter(avatar.preferredSize),
    );
  }
}

class RootPainter extends CustomPainter {
  Size avatar;
  Paint _paint = Paint()
    ..color = Colors.grey[400]
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2
    ..strokeCap = StrokeCap.round;

  RootPainter(this.avatar);

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(Offset(avatar.width/2, avatar.height), Offset(avatar.width/2, size.height), _paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
