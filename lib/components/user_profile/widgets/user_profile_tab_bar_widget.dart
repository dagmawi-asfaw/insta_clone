import 'package:flutter/material.dart';
import 'package:insta_clone/components/user_profile/user_profile.dart';
import 'package:insta_clone/components/user_profile/widgets/post_grid_view_widget.dart';

import '../../../shared/shared.dart';

class UserProfileTabBarWidget extends StatefulWidget {
  final UserProfileModel userProfileModel;

  const UserProfileTabBarWidget({
    Key? key,
    required this.userProfileModel,
  }) : super(key: key);

  @override
  State<UserProfileTabBarWidget> createState() =>
      _UserProfileTabBarWidgetState();
}

class _UserProfileTabBarWidgetState extends State<UserProfileTabBarWidget>
    with TickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TabBar(
          labelPadding: EdgeInsets.zero,
          indicatorPadding: EdgeInsets.zero,
          indicatorWeight: 1,
          indicatorColor: AppColors.kPrimaryColor,
          padding: EdgeInsets.zero,
          controller: _controller,
          tabs: [
            UserProfileTabItemWidget(
              isSelected: _controller.index == 0,
              label: 'My Posts',
              iconData: Icons.image_rounded,
            ),
            UserProfileTabItemWidget(
              isSelected: _controller.index == 1,
              label: 'Liked Items',
              iconData: Icons.check_circle,
            ),
          ],
          onTap: (index) {
            setState(() {
              _controller.animateTo(
                index,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeIn,
              );
            });
          },
        ),
        Expanded(
          child: TabBarView(
            controller: _controller,
            children: [
              PostGridViewWidget(
                posts: widget.userProfileModel.myPosts!,
              ),
              PostGridViewWidget(
                posts: widget.userProfileModel.likedItems!,
              ),
            ],
          ),
        )
      ],
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }
}
