import 'package:dash_board/views/widgets/custom_back_ground_container.dart';
import 'package:dash_board/views/widgets/latest_transaction.dart';
import 'package:dash_board/views/widgets/quick_invoice_form.dart';
import 'package:dash_board/views/widgets/quick_invoice_header.dart';
import 'package:flutter/material.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
          Divider(height: 48, color: Color(0xffF1F1F1)),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
