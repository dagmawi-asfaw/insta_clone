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
          constraints: const BoxConstraints(
            minHeight: 250,
            minWidth: 200,
          ),
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
                backgroundColor: AppColors.kPrimaryColor,
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
