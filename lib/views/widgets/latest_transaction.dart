import 'package:dash_board/utils/app_styles.dart';
import 'package:dash_board/views/widgets/latest_transaction_list_view.dart';
import 'package:flutter/material.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Latest Transaction',
            style: AppStyles.styleMedium16(context),
          ),
        ),
        SizedBox(height: 16),
        LatestTransactionListView(),
      ],
    );
  }
}
