import 'package:dash_board/views/widgets/adaptive_layout.dart';
import 'package:dash_board/views/widgets/dash_board_mobile_layout.dart';
import 'package:dash_board/views/widgets/dash_board_tablet_layout.dart';
import 'package:dash_board/views/widgets/dashboard_desktop_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => DashBoardMobileLayout(),
        tabletLayout: (context) => DashBoardTabletLayout(),
        desktopLayout: (context) => DashboardDesktopLayout(),
      ),
    );
  }
}
