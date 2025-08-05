import 'package:dash_board/utils/app_styles.dart';
import 'package:dash_board/views/widgets/dots_indicator.dart';
import 'package:dash_board/views/widgets/my_cards_page_view.dart';
import 'package:flutter/material.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  late PageController pageController;
  int currentPageIndex = 0;

  void initstate() {
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('My Card', style: AppStyles.styleSemiBold20(context)),
        SizedBox(height: 20),
        MyCardsPageView(pageController: pageController),
        SizedBox(height: 20),
        DotsIndicator(currentPageIndex: currentPageIndex),
      ],
    );
  }
}
