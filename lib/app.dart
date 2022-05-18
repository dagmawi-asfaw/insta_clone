import 'package:flutter/material.dart';
import 'package:insta_clone/shared/constants/constants.dart';

import 'components/user_profile/view/user_profile_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appThemeData,
      home: const UserProfilePage(),
    );
  }
}
