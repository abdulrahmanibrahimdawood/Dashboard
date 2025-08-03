import 'package:dash_board/models/drower_item_model.dart';
import 'package:dash_board/views/widgets/active_and_inactive_item.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drowerItemModel,
    required this.isActive,
  });

  final DrawerItemModel drowerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drowerItemModel: drowerItemModel)
        : InActiveDrawerItem(drowerItemModel: drowerItemModel);
  }
}
