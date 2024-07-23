import 'package:flutter/material.dart';
import '../widgets/user_info.dart';
import '../utils/app_images.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          UserInfoListTile(
            img: Assets.imagesAvatar3,
            title: "Lekan Okeowo",
            subTitle: 'demo@gmail.com',
          ),
        ],
      ),
    );
  }
}
