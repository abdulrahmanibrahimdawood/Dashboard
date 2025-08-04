import 'package:dash_board/views/widgets/all_expenses_header.dart';
import 'package:dash_board/views/widgets/all_expenses_item_list_view.dart';
import 'package:dash_board/views/widgets/custom_back_ground_container.dart'
    show CustomBackGroundContainer;
import 'package:flutter/material.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          AllExpensesItemListView(),
        ],
      ),
    );
  }
}
