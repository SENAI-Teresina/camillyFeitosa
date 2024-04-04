import 'package:flutter/material.dart';

void main() {
  runApp(const CommentApp());
}

class CommentApp extends StatelessWidget {
  const CommentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fotos de cachorros'),
        ),
        body: const PostWithComments(),
      ),
    );
  }
}

class PostWithComments extends StatelessWidget {
  const PostWithComments({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Postagem',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          CommentWidget(
            profileImageUrl: 'assets/profile_picture.png',
            commentText: 'Post legal!',
          ),
          CommentWidget(
            profileImageUrl: 'assets/profile_picture.png',
            commentText: 'Uau!',
          ),
          CommentWidget(
            profileImageUrl: 'assets/profile_picture.png',
            commentText: 'Divou muito!',
          ),
        ],
      ),
    );
  }
}

class CommentWidget extends StatelessWidget {
  final String profileImageUrl;
  final String commentText;

  const CommentWidget({
    super.key,
    required this.profileImageUrl,
    required this.commentText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage(profileImageUrl),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            commentText,
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
