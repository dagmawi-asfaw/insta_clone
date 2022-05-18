import 'package:flutter/material.dart';

import '../../../shared/shared.dart';

class EditProfileButtonWidget extends StatelessWidget {
  const EditProfileButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: ButtonWidget(
        key: const Key('edit_profile_button'),
        onPressed: () {},
        buttonText: 'Edit Profile',
      ),
    );
  }
}
