import 'package:dash_board/utils/app_styles.dart';
import 'package:flutter/material.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Income', style: AppStyles.styleSemiBold20(context)),

        Container(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: const Color(0xFFF1F1F1)),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            children: [
              Text('Monthly', style: AppStyles.styleMedium16(context)),
              SizedBox(width: 16),
              Transform.rotate(
                angle: -1.57079633,
                child: Icon(Icons.arrow_back_ios_new_outlined),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
