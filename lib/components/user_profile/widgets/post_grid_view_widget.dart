import 'package:flutter/material.dart';
import 'package:insta_clone/components/user_profile/widgets/post_widget.dart';

import '../../../shared/shared.dart';

class PostGridViewWidget extends StatelessWidget {
  final List<PostModel> posts;

  const PostGridViewWidget({
    Key? key,
    required this.posts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: posts
          .map<Widget>(
            (e) => PostWidget(postModel: e),
          )
          .toList(),
    );
  }
}
