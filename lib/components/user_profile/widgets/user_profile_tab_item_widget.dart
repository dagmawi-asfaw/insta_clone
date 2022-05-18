import 'package:flutter/material.dart';

import '../../../shared/shared.dart';

class UserProfileTabItemWidget extends StatelessWidget {
  final bool isSelected;
  final String label;
  final IconData iconData;

  const UserProfileTabItemWidget({
    Key? key,
    required this.isSelected,
    required this.label,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      color: (isSelected)
          ? AppColors.kPrimaryColor
          : AppColors.kWhite.withOpacity(0.1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            color: (isSelected)
                ? AppColors.kWhite
                : AppColors.kWhite.withOpacity(0.3),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            label,
            style: Theme.of(context).textTheme.bodyTextStyle1.copyWith(
                  color: (isSelected)
                      ? AppColors.kWhite
                      : AppColors.kWhite.withOpacity(0.6),
                ),
          ),
        ],
      ),
    );
  }
}
