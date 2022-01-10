import 'package:cozy_app/theme.dart';
import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({Key? key, required this.imageUrl, required this.isActive})
      : super(key: key);
  final String imageUrl;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          Image.asset(
            imageUrl,
            width: 26,
          ),
          isActive
              ? Container(
                  width: 30,
                  height: 4,
                  decoration: const BoxDecoration(
                      color: purpleColor,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(100))),
                )
              : Container(),
        ],
      ),
    );
  }
}
