import 'dart:developer' as developer;
import 'package:comment_tree/data/comment.dart';
import 'package:flutter/material.dart';

class CommentChildWidget extends StatelessWidget {

  final PreferredSizeWidget avatar;
  final Widget content;
  final bool isLast;
  final Size avatarRoot;

  CommentChildWidget({
    @required this.isLast,
    @required this.avatar,
    @required this.content,
    @required this.avatarRoot,
  }) {
    padding = EdgeInsets.only(left: avatarRoot.width + 8.0, bottom: 8, top: 8);
  }

  EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: Container(
        padding: padding,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            avatar,
            SizedBox(width: 8,),
            Expanded(
              child: content
              ),
          ],
        ),
      ),
      painter: _Painter(
        isLast : isLast,
        padding: padding,
        avatarRoot: avatarRoot,
        avatarChild: avatar.preferredSize,
      ),
    );
  }
}

class _Painter extends CustomPainter {

  bool isLast = false;

  EdgeInsets padding;

  Size avatarRoot;
  Size avatarChild;

  _Painter({this.isLast, this.padding, this.avatarRoot, this.avatarChild});

  Paint _paint = Paint()..color = Colors.grey[400]..style = PaintingStyle.stroke..strokeWidth = 2..strokeCap = StrokeCap.round;
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    path.moveTo(avatarRoot.width/2, 0);
    path.cubicTo(
        avatarRoot.width/2, 0,
        avatarRoot.width/2, padding.top + avatarChild.height/2,
        avatarRoot.width, padding.top + avatarChild.height/2);
    canvas.drawPath(path, _paint);

    if(!isLast) {
      canvas.drawLine(Offset(avatarRoot.width/2, 0), Offset(avatarRoot.width/2, size.height), _paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

