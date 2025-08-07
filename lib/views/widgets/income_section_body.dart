import 'package:dash_board/utils/size_config.dart';
import 'package:dash_board/views/widgets/detailed_income_chart.dart';
import 'package:dash_board/views/widgets/income_chart.dart';
import 'package:dash_board/views/widgets/income_details.dart';
import 'package:flutter/material.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width < 1920
        ? Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: DetailedIncomeChart(),
            ),
          )
        : Row(
            children: [
              Expanded(child: IncomeChart()),
              Expanded(child: IncomeDetails()),
            ],
          );
  }
}
