import 'package:dash_board/models/drower_item_model.dart';
import 'package:dash_board/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
    return ListTile(
      leading: SvgPicture.asset(drowerItemModel.image),
      title: Text(
        drowerItemModel.title,
        style: AppStyles.styleRegular16(context),
      ),
    );
  }
}
