import 'package:flutter/material.dart';

import '../../../shared/shared.dart';

class AccountInfoItemWidget extends StatelessWidget {
  final String title;
  final String value;

  const AccountInfoItemWidget({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          value,
          style: Theme.of(context).textTheme.bodyTextStyle1.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.bodyTextStyle1.copyWith(
                fontWeight: FontWeight.w400,
              ),
        ),
      ],
    );
  }
}
