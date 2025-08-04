import 'package:dash_board/views/widgets/custom_back_ground_container.dart';
import 'package:dash_board/views/widgets/latest_transaction.dart';
import 'package:dash_board/views/widgets/quick_invoice_header.dart';
import 'package:flutter/material.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(children: [QuickInvoiceHeader(), LatestTransaction()]),
    );
  }
}
