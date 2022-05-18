import 'package:flutter/material.dart';

import '../../../shared/shared.dart';
import '../user_profile.dart';

class UserProfileDataWidget extends StatelessWidget {
  final UserProfileModel userProfileModel;

  const UserProfileDataWidget({
    Key? key,
    required this.userProfileModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        UserAvatarWidget(
          imageUrl: userProfileModel.profileImageUrl,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "${userProfileModel.firstName} ${userProfileModel.lastName}",
          style: Theme.of(context).textTheme.bodyTextStyle1,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          "@${userProfileModel.username}",
          style: Theme.of(context).textTheme.bodyTextStyle2,
        ),
        const SizedBox(
          height: 20,
        ),
        const EditProfileButtonWidget(),
        const SizedBox(
          height: 20,
        ),
        AccountInfoWidget(userProfileModel: userProfileModel),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
