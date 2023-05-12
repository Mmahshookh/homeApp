import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BottonNavIcons(Icons.person),
          BottonNavIcons(Icons.shop),
          BottonNavIcons(Icons.home, isSelected: true),
          BottonNavIcons(Icons.favorite),
          BottonNavIcons(Icons.settings),
        ],
      ),
    );
  }
}

Container BottonNavIcons(IconData icon, {isSelected = false}) {
  return Container(
    height: 50,
    width: 50,
    decoration: BoxDecoration(
      color: isSelected ? Colors.pink[100] : Colors.white,
      shape: BoxShape.circle,
      boxShadow: isSelected
          ? [BoxShadow(color: Colors.grey, blurRadius: 5, spreadRadius: 1)]
          : [],
    ),
    child: Icon(
      icon,
      color: isSelected ? Colors.white : Colors.black,
    ),
  );
}
