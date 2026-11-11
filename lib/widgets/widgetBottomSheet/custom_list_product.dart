import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:runway/widgets/custom_about_product.dart';

class CustomListProduct extends StatelessWidget {
   CustomListProduct({super.key});

  List<CustomAboutProduct> aboutProduct = [
    CustomAboutProduct(
      title: "Product details",
      svg: "assets/icons/product.svg",
      icon: "assets/icons/open.svg",
    ),
    CustomAboutProduct(
      title: "Brand",
      svg: "assets/icons/brand.svg",
      icon: "assets/icons/close.svg",
    ),
    CustomAboutProduct(
      title: "Size and fit",
      svg: "assets/icons/free_delivery.svg",
      icon: "assets/icons/close.svg",
    ),
    CustomAboutProduct(
      title: "History",
      svg: "assets/icons/history.svg",
      icon: "assets/icons/close.svg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
              children: List.generate(aboutProduct.length, (index) {
                return Column(
                  children: [
                    Container(
                      height: 55,
                      width: 390,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 10,
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset(aboutProduct[index].svg),
                            Gap(6),
                            Text(
                              aboutProduct[index].title,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Spacer(),
                            SvgPicture.asset(
                              aboutProduct[index].icon.toString(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              }),
            ) ;
  }
}