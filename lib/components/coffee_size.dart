import 'package:flutter/material.dart';

class SizeButton extends StatelessWidget {
  final String size;
  final bool isSelected;
  final VoidCallback onTap;

  const SizeButton({
    required this.size,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 105,
        height: 40,
        margin: const EdgeInsets.only(top: 10, left: 8),
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: isSelected == true ? Colors.orange : Colors.transparent),
        ),
        child: Text(
          size,
          style: TextStyle(
            fontSize: 18,
            color: isSelected == true ? Colors.orange : Colors.grey.shade400,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
