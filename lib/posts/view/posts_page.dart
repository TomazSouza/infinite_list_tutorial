import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_list_tutorial/posts/bloc/post_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:infinite_list_tutorial/posts/posts.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Posts'),
        ),
        body: BlocProvider(
          create: (_) => PostBloc(httpClient: http.Client())..add(PostFetched()),
          child: const PostsLists(),
        ),
      ),
    );
  }
}
