import 'dart:developer' as developer;
import 'package:comment_tree/data/comment.dart';
import 'package:comment_tree/widgets/comment_child_widget.dart';
import 'package:comment_tree/widgets/root_comment_widget.dart';
import 'package:flutter/material.dart';

typedef AvatarWidgetBuilder<T> = PreferredSize Function(BuildContext context, T value);
typedef ContentBuilder<T> = Widget Function(BuildContext context, T value);

class CommentTreeWidget<R, C> extends StatefulWidget {
  static const ROUTE_NAME = 'CommentTreeWidget';

  final R root;
  final List<C> replies;

  final AvatarWidgetBuilder<R> avatarRoot;
  final ContentBuilder<R> contentRoot;

  final AvatarWidgetBuilder<C> avatarChild;
  final ContentBuilder<C> contentChild;

  CommentTreeWidget(
      this.root, this.replies,
      {
        this.avatarRoot,
        this.contentRoot,
        this.avatarChild,
        this.contentChild
      });

  @override
  _CommentTreeWidgetState<R, C> createState() => _CommentTreeWidgetState<R, C>();
}

class _CommentTreeWidgetState<R, C> extends State<CommentTreeWidget<R, C>> {
  @override
  Widget build(BuildContext context) {
    PreferredSize avatarRoot = widget.avatarRoot(context, widget.root);
    return Container(
      child: Column(
        children: [
          RootCommentWidget(
            avatarRoot,
              widget.contentRoot(context, widget.root),
          ),
          ...widget.replies.map((e) => CommentChildWidget(
            isLast: widget.replies.indexOf(e) == (widget.replies.length - 1),
            avatar: widget.avatarChild(context, e),
            avatarRoot: avatarRoot.preferredSize,
            content: widget.contentChild(context, e),
          ))
        ],
      ),
    );
  }
}
