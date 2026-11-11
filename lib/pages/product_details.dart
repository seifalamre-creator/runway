import 'package:flutter/material.dart';
import 'package:runway/widgets/category_filter.dart';
import 'package:runway/widgets/custom_appbar.dart';
import 'package:runway/widgets/custom_buttom_sheet.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key, this.title, this.image, this.price});
  final String? title, image, price;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return DraggableScrollableSheet(
            initialChildSize: 0.15,
            minChildSize: 0.15,
            maxChildSize: 0.85,
            expand: false,
            builder: (context,  scrollController) {
              return Container(
                height: 138,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ListView(
                    controller: scrollController,
                    children: [CustomBottomSheet(widget: widget)],
                  ),
                ),
              );
            },
          );
        },
      );
    });
  }

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
          Container(
            width: 180,
            decoration: BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Stack(
                children: [
                  Center(child: Image.asset("${widget.image}")),
                  Positioned(
                    bottom: 0,
                    left: 20,
                    right: 25,
                    child: Image.asset("assets/images/models/shadow.png"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
