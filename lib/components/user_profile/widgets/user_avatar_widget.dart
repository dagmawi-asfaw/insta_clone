import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/shared/constants/color_constants.dart';

class UserAvatarWidget extends StatelessWidget {
  final String imageUrl;

  const UserAvatarWidget({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 90,
        height: 90,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            errorWidget: (context, url, error) => const CircleAvatar(
              backgroundColor: AppColors.kWhite,
              child: Icon(
                Icons.person,
                color: AppColors.kPrimaryColor,
                size: 40,
              ),
            ),
            imageBuilder: (context, imageProvider) => CircleAvatar(
              backgroundImage: imageProvider,
            ),
          ),
        ),
      ),
    );
  }
}
