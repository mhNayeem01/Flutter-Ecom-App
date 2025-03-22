import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class FBottomBar extends StatefulWidget {
  const FBottomBar({
    super.key,
    required this.currentIndex,
    required this.onTapMethod,
  });

  final int currentIndex;
  final Function(int) onTapMethod;

  @override
  State<FBottomBar> createState() => _FBottomBarState();
}

class _FBottomBarState extends State<FBottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.currentIndex,
      onTap: widget.onTapMethod,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Iconsax.home_1_bold,
          ),
          label: "HOME",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Iconsax.heart_add_bold,
          ),
          label: "WISHLIST",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Iconsax.shopping_bag_bold,
          ),
          label: "ORDER",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Iconsax.user_add_bold,
          ),
          label: "ACCOUNT",
        ),
      ],
    );
  }
}
