import 'package:flutter/material.dart';
import '../utils/app_images.dart';
import '../models/drawer_item_model.dart';
import '../widgets/drawer_item.dart';

class DrawerItemListView extends StatelessWidget {
  const DrawerItemListView({
    super.key,
  });

  static const List<DrawerItemModel> items = [
    DrawerItemModel(image: Assets.imagesDashboard, title: "Dashboard"),
    DrawerItemModel(image: Assets.imagesMyTransaction, title: "My Transaction"),
    DrawerItemModel(image: Assets.imagesStatistics, title: "Statistics"),
    DrawerItemModel(image: Assets.imagesWallAccount, title: "Wallet Account"),
    DrawerItemModel(image: Assets.imagesMyInvestment, title: "My Investment"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20),
          child: DrawerItem(
            drawerItemModel: items[index],
          ),
        );
      },
    );
  }
}
