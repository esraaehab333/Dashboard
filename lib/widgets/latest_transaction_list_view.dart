import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/user_info.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const items = [
    UserInfoModel(
      image: Assets.imagesAvatar4,
      title: "Madrani Andi",
      subtitle: "Madraniandi20@gmail",
    ),
    UserInfoModel(
      image: Assets.imagesAvatar1,
      title: "Madrani Andi",
      subtitle: "Madraniandi20@gmail",
    ),
    UserInfoModel(
      image: Assets.imagesAvatar4,
      title: "Madrani Andi",
      subtitle: "Madraniandi20@gmail",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return IntrinsicWidth(
            child: UserInfoListTile(
              userInfoModel: items[index],
            ),
          );
        },
      ),
    );
  }
} 
