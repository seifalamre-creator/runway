import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class CategoryFilter extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(
              "Sort by",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
            ),
            Gap(8),
            SvgPicture.asset("assets/icons/select.svg"),
            Spacer(),
            SvgPicture.asset("assets/icons/filter.svg"),
            Gap(10),
            Text(
              "Filter",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
            ),
            Gap(20),
            SvgPicture.asset("assets/icons/grid.svg"),
            Gap(10),
            SvgPicture.asset("assets/icons/groups.svg"),
          ],
        ),
      ),
    );
  }
}
