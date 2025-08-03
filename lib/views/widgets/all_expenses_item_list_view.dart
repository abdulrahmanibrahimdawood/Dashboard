import 'package:dash_board/models/all_expenses_item_model.dart';
import 'package:dash_board/utils/app_images.dart';
import 'package:dash_board/views/widgets/all_expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesItemListView extends StatelessWidget {
  const AllExpensesItemListView({super.key});

  static const List<AllExpensesItemModel> items = [
    AllExpensesItemModel(
      title: 'Balance',
      date: 'April 2022',
      price: r'$20.125',
      image: Assets.imagesBalance,
    ),
    AllExpensesItemModel(
      title: 'Income',
      date: 'April 2022',
      price: r'$20.125',
      image: Assets.imagesIncome,
    ),
    AllExpensesItemModel(
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20.125',
      image: Assets.imagesExpences,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      //=====================================================================================================
      // children: items
      //     .map((e) => Expanded(child: AllExpensesItem(itemModel: e)))
      //     .toList(),
      //=====================================================================================================
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;

        if (index == 1) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: AllExpensesItem(itemModel: item),
          );
        } else {
          return AllExpensesItem(itemModel: item);
        }
      }).toList(),
    );
  }
}
