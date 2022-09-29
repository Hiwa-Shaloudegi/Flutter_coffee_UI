import 'package:flutter/material.dart';

class CoffeeType extends StatelessWidget {

  final String type;
  final bool isSelected;
  final VoidCallback onTap;

  CoffeeType({
    required this.type,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          type,
          style: TextStyle(
            color: isSelected == true ?  Colors.orange : Colors.grey.shade400,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}

