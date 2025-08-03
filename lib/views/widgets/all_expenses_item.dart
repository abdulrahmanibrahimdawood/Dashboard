import 'package:dash_board/models/all_expenses_item_model.dart';
import 'package:dash_board/utils/app_styles.dart';
import 'package:dash_board/views/widgets/all_expenses_item_header.dart';
import 'package:flutter/material.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.itemModel});
  final AllExpensesItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(width: 1, color: const Color(0xFFF1F1F1)),
        ),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(image: itemModel.image),
          SizedBox(height: 34),
          Text(itemModel.title, style: AppStyles.styleMedium16(context)),
          SizedBox(height: 8),
          Text(itemModel.date, style: AppStyles.styleRegular14(context)),
          SizedBox(height: 16),
          Text(itemModel.price, style: AppStyles.styleSemiBold24(context)),
        ],
      ),
    );
  }
}
