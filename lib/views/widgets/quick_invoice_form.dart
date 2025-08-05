import 'package:dash_board/utils/app_styles.dart';
import 'package:dash_board/views/widgets/custom_button.dart';
import 'package:dash_board/views/widgets/title_text_feild.dart';
import 'package:flutter/material.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextFeild(
                title: 'Customer Name',
                hint: Text(
                  'Type Customer Name',
                  style: AppStyles.styleRegular16(
                    context,
                  ).copyWith(color: Color(0xffAAAAAA)),
                ),
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextFeild(
                title: 'Customer Email',
                hint: Text(
                  'Type Customer Email',
                  style: AppStyles.styleRegular16(
                    context,
                  ).copyWith(color: Color(0xffAAAAAA)),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: TitleTextFeild(
                title: 'Item Name',
                hint: Text(
                  'Type Item Name',
                  style: AppStyles.styleRegular16(
                    context,
                  ).copyWith(color: Color(0xffAAAAAA)),
                ),
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextFeild(
                title: 'Item Mount',
                hint: Text(
                  'USD',
                  style: AppStyles.styleRegular16(
                    context,
                  ).copyWith(color: Color(0xffAAAAAA)),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                textColor: Color(0xff4EB7F2),
                backgroundColor: Colors.transparent,
              ),
            ),
            SizedBox(width: 24),

            Expanded(child: CustomButton()),
          ],
        ),
      ],
    );
  }
}
