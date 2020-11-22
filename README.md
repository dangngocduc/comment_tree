# comment_tree

A new Flutter package.

## Getting Started
```dart
CommentTreeWidget<Comment, Comment>(
      ...
      treeThemeData: TreeThemeData(
        lineColor: Colors.green[500],
        lineWidth: 3
      ),
      avatarRoot: (context, data) => PreferredSize(...),
      avatarChild: (context, data) => PreferredSize(...),
      contentChild: (context, data) {
          return ...;
      },
      contentRoot: (context, data) {
         return ...;
      })
```

## Demo
|                             |                             |                             |
|:----------------------------|:----------------------------|:----------------------------|
| ![](demo/screen_demo.png)   | ![](demo/screen_demo_1.png) | ![](demo/screen_demo_2.png) |
