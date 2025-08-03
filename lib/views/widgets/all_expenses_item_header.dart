import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          padding: EdgeInsets.all(14),
          decoration: ShapeDecoration(color: Colors.white, shape: OvalBorder()),
          child: SvgPicture.asset(image),
        ),
        Spacer(),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: const Color(0xFF064061),
          ),
        ),
      ],
    );
  }
}
