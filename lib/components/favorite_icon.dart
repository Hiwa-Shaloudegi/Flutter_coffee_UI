import 'package:flutter/material.dart';

class FavIcon extends StatefulWidget {

  Color iconColor;
  final bool isSelected;
  final VoidCallback onTap;



  FavIcon({this.iconColor = Colors.grey, this.isSelected = false, required this.onTap});

  @override
  State<FavIcon> createState() => _FavIconState();
}

class _FavIconState extends State<FavIcon> {
  //Colors.grey.shade900
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          //TODO: add to favorite UI
          // isSelected = !isSelected;
        });
      },   //widget.onTap,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Icon(
          Icons.favorite_outlined,
          size: 16,
          color: Colors.grey,
        ),
      ),
    );
  }
}
