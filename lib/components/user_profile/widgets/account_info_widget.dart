import 'package:flutter/material.dart';
import 'package:insta_clone/components/user_profile/user_profile.dart';
import 'package:insta_clone/shared/models/models.dart';
import 'package:insta_clone/shared/shared.dart';

class AccountInfoWidget extends StatelessWidget {
  final UserProfileModel userProfileModel;

  const AccountInfoWidget({
    Key? key,
    required this.userProfileModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: kContextWidth(context) * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kBorderRadius),
        border: Border.all(
          color: AppColors.kPrimaryColor,
          width: 1.5,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AccountInfoItemWidget(
            title: 'following',
            value: userProfileModel.following.toString(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 22.0),
            child: VerticalDivider(
              color: AppColors.kWhite.withOpacity(0.3),
              thickness: 1,
              width: 1,
            ),
          ),
          AccountInfoItemWidget(
            title: 'followers',
            value: userProfileModel.followers.toString(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 22.0),
            child: VerticalDivider(
              color: AppColors.kWhite.withOpacity(0.3),
              thickness: 1,
              width: 1,
            ),
          ),
          AccountInfoItemWidget(
            title: 'likes',
            value: userProfileModel.likes.toString(),
          ),
        ],
      ),
    );
  }
}
