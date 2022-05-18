import 'package:flutter/material.dart';
import 'package:insta_clone/components/user_profile/user_profile.dart';

import '../../../shared/shared.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          UserAvatarWidget(
            imageUrl: user1.profileImageUrl,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "${user1.firstName} ${user1.lastName}",
            style: Theme.of(context).textTheme.bodyTextStyle1,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "@${user1.username}",
            style: Theme.of(context).textTheme.bodyTextStyle2,
          ),
          const SizedBox(
            height: 20,
          ),
          EditProfileButtonWidget(),
        ],
      ),
    );
  }
}
