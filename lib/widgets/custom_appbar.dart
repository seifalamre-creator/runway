import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
    required this.title,
    required this.prefix,
    required this.suffix,
    this.onTap,

  });

  final String title;
  final String prefix;
  final String suffix;
  final Function()? onTap;

  @override
  Size get preferredSize => Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      toolbarHeight: preferredSize.height,
      centerTitle: true,
      leading: SizedBox.shrink(),
      leadingWidth: 0,
      scrolledUnderElevation: 0.0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: onTap,
            child: SvgPicture.asset(prefix, width: 24)),
          Text(
            title,
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
          ),
          SvgPicture.asset(suffix, width: 20),
        ],
      ),
    );
  }
}
