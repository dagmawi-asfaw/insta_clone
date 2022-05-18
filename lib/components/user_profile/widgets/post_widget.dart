import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../shared/shared.dart';

class PostWidget extends StatelessWidget {
  final PostModel postModel;

  const PostWidget({
    Key? key,
    required this.postModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 200,
          height: 250,
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: postModel.imageUrl,
          ),
        ),
        Positioned(
          left: 4,
          bottom: 4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 14,
                backgroundImage: CachedNetworkImageProvider(postModel.icon!),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                postModel.title,
                style: Theme.of(context).textTheme.bodyTextStyle3,
              )
            ],
          ),
        ),
      ],
    );
  }
}
