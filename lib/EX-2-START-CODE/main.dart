import 'package:assignment_weekend/EX-2-START-CODE/ui/provider/post_provider.dart';
import 'package:flutter/material.dart';
import 'package:assignment_weekend/EX-2-START-CODE/repository/http_posts_repository.dart';
import 'repository/post_repository.dart';
import 'package:provider/provider.dart';

import 'ui/screens/post_screen.dart';

void main() {
  // 1- Create the repository
  PostRepository postRepo = HttpPostRepository();

  // 2 - Run the UI
  runApp(
    ChangeNotifierProvider(
      create: (context) => PostProvider(repository: postRepo),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: PostScreen()),
    ),
  );
}
