
import 'package:flutter/material.dart';

class Custom_SearchButton extends StatelessWidget {
  const Custom_SearchButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: const Color.fromARGB(10, 255, 255, 255),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Icon(
        Icons.search,
        size: 30,
      ),
    );
  }
}