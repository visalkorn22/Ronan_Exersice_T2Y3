import 'package:assignment_weekend/EX-2-START-CODE/ui/provider/async_value.dart';
import 'package:assignment_weekend/EX-2-START-CODE/ui/provider/post_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../model/post.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //  1 - Get the post provider
    final PostProvider postProvider = Provider.of<PostProvider>(context);

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            // 2- Fetch the post
            onPressed: () => {postProvider.fetchPost(45)},
            icon: const Icon(Icons.update),
          ),
        ],
      ),

      // 3 -  Display the post
      body: Center(child: _buildBody(postProvider)),
    );
  }

  Widget _buildBody(PostProvider courseProvider) {
    final postValue = courseProvider.postValue;

    if (postValue == null) {
      return Text('Tap refresh to display post'); // display an empty state
    }

    switch (postValue.state) {
      case AsyncValueState.loading:
        return CircularProgressIndicator(); // display a progress

      case AsyncValueState.error:
        return Text('Error: ${postValue.error}'); // display a error

      case AsyncValueState.success:
        final posts = postValue.data!;
        if (posts.isEmpty) {
          return Text('No posts for now');
        }
        return PostsList(posts: posts); // display the post
    }
  }
}

class PostsList extends StatelessWidget {
  const PostsList({super.key, required this.posts});

  final List<Post> posts;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        return PostCard(post: posts[index]);
      },
    );
  }
}

class PostCard extends StatelessWidget {
  const PostCard({super.key, required this.post});

  final Post post;

  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text(post.title), subtitle: Text(post.description));
  }
}
