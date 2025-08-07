import 'package:dash_board/views/widgets/adaptive_layout.dart';
import 'package:dash_board/views/widgets/custom_drawer.dart';
import 'package:dash_board/views/widgets/dash_board_mobile_layout.dart';
import 'package:dash_board/views/widgets/dash_board_tablet_layout.dart';
import 'package:dash_board/views/widgets/dashboard_desktop_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              elevation: 0,
              backgroundColor: Color(0xffFAFAFA),
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: Icon(Icons.menu, color: Colors.black),
              ),
            )
          : null,
      backgroundColor: Color(0xffF7F9FA),
      drawer: MediaQuery.sizeOf(context).width < 800 ? CustomDrawer() : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => DashBoardMobileLayout(),
        tabletLayout: (context) => DashBoardTabletLayout(),
        desktopLayout: (context) => DashboardDesktopLayout(),
      ),
    );
  }
}
