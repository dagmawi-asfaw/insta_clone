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
          UserProfileDataWidget(userProfileModel: user1),
          const Expanded(
            child: UserProfileTabBarWidget(),
          )
        ],
      ),
    );
  }
}
