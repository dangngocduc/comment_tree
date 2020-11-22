import 'dart:developer' as developer;
import 'package:comment_tree/data/comment.dart';
import 'package:comment_tree/widgets/tree_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
      painter: RootPainter(
        avatar.preferredSize,
        context.watch<TreeThemeData>().lineColor,
        context.watch<TreeThemeData>().lineWidth,
      ),
    );
  }
}

class RootPainter extends CustomPainter {
  Size avatar;
  Paint _paint;
  Color pathColor;
  double strokeWidth;
  RootPainter(this.avatar, this.pathColor, this.strokeWidth) {
    _paint = Paint()
      ..color = pathColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(Offset(avatar.width/2, avatar.height), Offset(avatar.width/2, size.height), _paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
