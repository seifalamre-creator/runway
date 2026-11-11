import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:runway/pages/product_details.dart';
import 'package:runway/widgets/category_filter.dart';
import 'package:runway/widgets/custom_appbar.dart';
import 'package:runway/widgets/product_item.dart';
import 'package:runway/widgets/product_model.dart';

class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({super.key});

  List<ProductModel> productModels = [
    ProductModel(
      image: "assets/images/models/model5.png",
      title: "Top man black",
      price: "£30",
    ),
    ProductModel(
      image: "assets/images/models/model1.png",
      title: "Gray coat and white T-sh..",
      price: "£25",
    ),
    ProductModel(
      image: "assets/images/models/model2.png",
      title: "Deep gray essential regul..",
      price: "£50",
    ),
    ProductModel(
      image: "assets/images/models/model3.png",
      title: "Top man black with Trous..",
      price: "£35",
    ),
    ProductModel(
      image: "assets/images/models/model4.png",
      title: "Top man black",
      price: "£70",
    ),
    ProductModel(
      image: "assets/images/models/model5.png",
      title: "Top man black",
      price: "£30",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: "Men",
        prefix: "assets/icons/arrow-left.svg",
        suffix: "assets/icons/bag.svg",
        onTap: () => Navigator.pop(context),
      ),

      body: Column(
        children: [
          CategoryFilter(),
          Gap(10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: GridView.builder(
                itemCount: productModels.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  childAspectRatio: 1 / 2.1,
                ),
                itemBuilder: (context, index) {
                  final items = productModels[index];
                  return ProductItem(
                    productModels: productModels,
                    image: items.image,
                    price: items.price,
                    title: items.title,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ProductDetails(
                            title: items.title,
                            image: items.image,
                            price: items.price,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
