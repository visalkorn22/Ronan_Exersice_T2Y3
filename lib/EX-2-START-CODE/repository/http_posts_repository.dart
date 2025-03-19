import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:assignment_weekend/EX-2-START-CODE/dto/post_dto.dart';

import '../model/post.dart';

import 'post_repository.dart';

class HttpPostRepository implements PostRepository {
  final String apiUrl = 'https://jsonplaceholder.typicode.com/posts';

  @override
  Future<List<Post>> getPosts() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      // The response body is a JSON array, so we need to decode it into a List<dynamic>.
      final List<dynamic> jsonList = json.decode(response.body);
      // Convert jsonList to postDTO
      List<PostDto> postDTOs =
          jsonList.map((json) => PostDto.fromJson(json)).toList();
      // Convert postDTO to post
      List<Post> posts = postDTOs.map((dto) => Post.fromDto(dto)).toList();
      return posts;
    } else {
      throw Exception('Failed to load posts: ${response.statusCode}');
    }
  }
}
