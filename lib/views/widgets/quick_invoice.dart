import 'package:dash_board/views/widgets/custom_back_ground_container.dart';
import 'package:dash_board/views/widgets/latest_transaction.dart';
import 'package:dash_board/views/widgets/quick_invoice_header.dart';
import 'package:dash_board/views/widgets/title_text_feild.dart';
import 'package:flutter/material.dart';

import '../../utils/app_styles.dart' show AppStyles;

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
          Divider(height: 48),
          TitleTextFeild(
            title: 'Customer Name',
            hint: Text(
              'Type Customer Name',
              style: AppStyles.styleRegular16(
                context,
              ).copyWith(color: Color(0xffAAAAAA)),
            ),
          ),
        ],
      ),
    );
  }
}
