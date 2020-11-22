# comment_tree
<p align="center">

  <a href="https://pub.dartlang.org/packages/comment_tree">
    <img alt="Pub Package" src="https://img.shields.io/pub/v/fl_paging.svg">
  </a>
  <br/>
  <a href="https://github.com/dangngocduc/comment_tree">
    <img src="https://img.shields.io/github/stars/dangngocduc/comment_tree.svg?style=flat&logo=github&colorB=deeppink&label=stars" alt="Star on GitHub">
  </a>
  <a href="https://github.com/tenhobi/effective_dart">
    <img alt="style: effective dart" src="https://img.shields.io/badge/style-effective_dart-40c4ff.svg">
  </a>
  <a href="https://opensource.org/licenses/MIT">
    <img alt="MIT License" src="https://img.shields.io/badge/License-MIT-blue.svg">
  </a>
</p>

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
## Design

![](demo/GUI.png)

## Demo
|                             |                             |                             |
|:----------------------------|:----------------------------|:----------------------------|
| ![](demo/screen_demo.png)   | ![](demo/screen_demo_1.png) | ![](demo/screen_demo_2.png) |
