import 'package:comment_tree/data/comment.dart';
import 'package:comment_tree/widgets/comment_tree_widget.dart';
import 'package:comment_tree/widgets/tree_theme_data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: CommentTreeWidget<Comment, Comment>(
          Comment(
              avatar: 'null',
              userName: 'null',
              content: 'felangel made felangel/cubit_and_beyond public '),
          [
            Comment(
                avatar: 'null',
                userName: 'null',
                content: 'A Dart template generator which helps teams'),
            Comment(
                avatar: 'null',
                userName: 'null',
                content:
                    'A Dart template generator which helps teams generator which helps teams generator which helps teams'),
            Comment(
                avatar: 'null',
                userName: 'null',
                content: 'A Dart template generator which helps teams'),
            Comment(
                avatar: 'null',
                userName: 'null',
                content:
                    'A Dart template generator which helps teams generator which helps teams '),
          ],
          treeThemeData:
              TreeThemeData(lineColor: Colors.green[500], lineWidth: 3),
          avatarRoot: (context, data) => PreferredSize(
            child: CircleAvatar(
              radius: 18,
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage('assets/avatar_2.png'),
            ),
            preferredSize: Size.fromRadius(18),
          ),
          avatarChild: (context, data) => PreferredSize(
            child: CircleAvatar(
              radius: 12,
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage('assets/avatar_1.png'),
            ),
            preferredSize: Size.fromRadius(12),
          ),
          contentChild: (context, data) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'dangngocduc',
                        style: Theme.of(context).textTheme.caption.copyWith(
                            fontWeight: FontWeight.w600, color: Colors.black),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        '${data.content}',
                        style: Theme.of(context).textTheme.caption.copyWith(
                            fontWeight: FontWeight.w300, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                DefaultTextStyle(
                  style: Theme.of(context).textTheme.caption.copyWith(
                      color: Colors.grey[700], fontWeight: FontWeight.bold),
                  child: Padding(
                    padding: EdgeInsets.only(top: 4),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 8,
                        ),
                        Text('Like'),
                        SizedBox(
                          width: 24,
                        ),
                        Text('Reply'),
                      ],
                    ),
                  ),
                )
              ],
            );
          },
          contentRoot: (context, data) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'dangngocduc',
                        style: Theme.of(context).textTheme.caption.copyWith(
                            fontWeight: FontWeight.w600, color: Colors.black),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        '${data.content}',
                        style: Theme.of(context).textTheme.caption.copyWith(
                            fontWeight: FontWeight.w300, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                DefaultTextStyle(
                  style: Theme.of(context).textTheme.caption.copyWith(
                      color: Colors.grey[700], fontWeight: FontWeight.bold),
                  child: Padding(
                    padding: EdgeInsets.only(top: 4),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 8,
                        ),
                        Text('Like'),
                        SizedBox(
                          width: 24,
                        ),
                        Text('Reply'),
                      ],
                    ),
                  ),
                )
              ],
            );
          },
        ),
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      ),
    );
  }
}
