import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class CustomSizeAndColor extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 55,
      width: 390,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                "Select color",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
              ),
              Gap(8),
              SvgPicture.asset("assets/icons/select.svg"),
            ],
          ),
    
          Container(height: 30, width: 1, color: Colors.black12),
          Row(
            children: [
              Text(
                "Select size",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
              ),
              Gap(8),
              SvgPicture.asset("assets/icons/select.svg"),
            ],
          ),
        ],
      ),
    );
  }
}
