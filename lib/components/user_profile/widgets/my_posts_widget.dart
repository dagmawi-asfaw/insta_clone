import 'package:flutter/material.dart';
import 'package:insta_clone/components/user_profile/widgets/post_widget.dart';

import '../../../shared/shared.dart';

class MyPostsWidget extends StatelessWidget {
  final List<PostModel> posts;

  const MyPostsWidget({
    Key? key,
    required this.posts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
   //   physics: const NeverScrollableScrollPhysics(),
      children: posts
          .map<Widget>(
            (e) => PostWidget(postModel: e),
          )
          .toList(),
    );
  }
}
