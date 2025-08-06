import 'package:dash_board/models/transaction_model.dart';
import 'package:dash_board/views/widgets/transaction_item.dart';
import 'package:flutter/material.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const List items = [
    TransactionModel(
      title: 'Cash Withdrawal',
      amount: r'$20,129',
      date: '13 Apr, 2022 ',
      withdrawal: true,
    ),
    TransactionModel(
      title: 'Landing Page project',
      amount: r'$2,000',
      date: '13 Apr, 2022 at 3:30 PM',
      withdrawal: false,
    ),
    TransactionModel(
      title: 'Juni Mobile App project',
      amount: r'$20,129',
      date: '13 Apr, 2022 at 3:30 PM',
      withdrawal: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) =>
          TransactionItem(transactionModel: items[index]),
      itemCount: items.length,
    );
  }
}
