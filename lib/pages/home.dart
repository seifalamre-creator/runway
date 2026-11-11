import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:runway/pages/categories_screen.dart';
import 'package:runway/widgets/custom_appbar.dart';
import 'package:runway/widgets/category_model.dart';
import 'package:video_player/video_player.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("assets/video/video.mp4")
      ..initialize().then((_) {
        setState(() {
          _controller.play();
        });
      });
  }

  List<CategoryModel> cateogries = [
    CategoryModel(name: "Women", image: "assets/images/category/women.png"),
    CategoryModel(name: "Men", image: "assets/images/category/man.png"),
    CategoryModel(name: "Kids", image: "assets/images/category/girls.png"),
    CategoryModel(name: "Deals", image: "assets/images/category/women2.png"),
    CategoryModel(name: "Man", image: "assets/images/category/man.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: CustomAppbar(
        title: "Runway",
        prefix: "assets/icons/menu.svg",
        suffix: "assets/icons/notifications.svg",
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(aspectRatio: 0.8, child: VideoPlayer(_controller)),
          Gap(25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Categories",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          Gap(25),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            child: Row(
              children: List.generate(cateogries.length, (index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => CategoriesScreen()),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(shape: BoxShape.circle),
                          child: Image.asset(cateogries[index].image),
                        ),
                        Gap(12),

                        Text(
                          cateogries[index].name,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
