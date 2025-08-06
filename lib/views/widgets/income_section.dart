import 'package:dash_board/views/widgets/custom_back_ground_container.dart';
import 'package:dash_board/views/widgets/income_chart.dart';
import 'package:dash_board/views/widgets/income_details.dart';
import 'package:dash_board/views/widgets/income_section_header.dart';
import 'package:flutter/material.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(
        children: [
          IncomeSectionHeader(),
          Row(
            children: [
              Expanded(child: IncomeChart()),
              Expanded(child: IncomeDetails()),
            ],
          ),
        ],
      ),
    );
  }
}
