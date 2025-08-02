import 'package:dash_board/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });
  final String image, title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xffFAFAFA),

      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(title, style: AppStyles.styleSemiBold16(context)),
        subtitle: Text(subtitle, style: AppStyles.styleRegular12(context)),
      ),
    );
  }
}
