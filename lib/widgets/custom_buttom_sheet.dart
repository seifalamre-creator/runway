import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:runway/pages/product_details.dart';
import 'package:runway/widgets/widgetBottomSheet/custom_buttom.dart';
import 'package:runway/widgets/widgetBottomSheet/custom_list_product.dart';
import 'package:runway/widgets/widgetBottomSheet/custom_product1.dart';
import 'package:runway/widgets/widgetBottomSheet/custom_size_color.dart';

class CustomBottomSheet extends StatelessWidget {
  CustomBottomSheet({super.key, required this.widget});

  final ProductDetails widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gap(10),
        Center(
          child: Container(
            width: 60,
            height: 10,
            decoration: BoxDecoration(
              color: Color(0xffD9D9D9),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),

        Gap(10),
        Text(
          maxLines: 1,
          "${widget.title}",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        Gap(18),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              "${widget.price}",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
            ),
            Spacer(),
            Icon(Icons.favorite_border),
            Gap(7),
            Text(
              "250",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        Gap(15),
        CustomSizeAndColor(),
        Gap(15),
        CustomButtom(),
        Gap(10),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomProduct1(),
            Gap(5),
            Text(
              "About product",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            Gap(15),

            CustomListProduct(),

            Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "You might also like",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Text(
                  "View all",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
