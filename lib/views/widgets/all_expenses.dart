import 'package:dash_board/views/widgets/all_expenses_header.dart';
import 'package:dash_board/views/widgets/all_expenses_item_list_view.dart';
import 'package:flutter/material.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
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
