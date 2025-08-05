import 'package:dash_board/utils/app_styles.dart';
import 'package:dash_board/views/widgets/custom_text_feild.dart';
import 'package:flutter/material.dart';

class TitleTextFeild extends StatelessWidget {
  const TitleTextFeild({super.key, required this.title, required this.hint});
  final String title;
  final Widget hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Customer Name', style: AppStyles.styleMedium16(context)),
        SizedBox(height: 12),
        CustomTextFeild(hint: hint),
      ],
    );
  }
}
