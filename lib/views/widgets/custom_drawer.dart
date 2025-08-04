import 'package:dash_board/models/drower_item_model.dart';
import 'package:dash_board/models/user_info_model.dart';
import 'package:dash_board/utils/app_images.dart';
import 'package:dash_board/views/widgets/active_and_inactive_item.dart';
import 'package:dash_board/views/widgets/drawer_items_list_view.dart';
import 'package:dash_board/views/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                image: Assets.imagesAvatar3,
                title: 'Lekan Okeowo',
                subtitle: 'demo@gmail.com',
              ),
            ),
          ),
          SliverToBoxAdapter(child: const SizedBox(height: 8)),
          DrawerItemsListView(),

          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(height: 20)),
                InActiveDrawerItem(
                  drowerItemModel: DrawerItemModel(
                    image: Assets.imagesSetting,
                    title: 'Settings',
                  ),
                ),
                InActiveDrawerItem(
                  drowerItemModel: DrawerItemModel(
                    image: Assets.imagesLogout,
                    title: 'Logout',
                  ),
                ),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
