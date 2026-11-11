

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:runway/widgets/product_model.dart';

class ProductItem extends StatelessWidget {
  ProductItem({
    super.key,
    required this.productModels,
    required this.image,
    required this.price,
    required this.title,
    required this.onTap,
  });

  final List<ProductModel> productModels;

  final String image, price, title;

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            width: 200,
            height: 255,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Stack(
                children: [
                  Center(child: Image.asset(image)),
                  Positioned(
                    bottom: 2,
                    left: 15,
                    right: 25,
                    child: Image.asset("assets/images/models/shadow.png"),
                  ),
                ],
              ),
            ),
          ),
        ),
        Gap(10),
        Text(
          maxLines: 1,
          title,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
        Gap(6),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              price,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
            ),
            Icon(Icons.favorite_border),
          ],
        ),
      ],
    );
  }
}
