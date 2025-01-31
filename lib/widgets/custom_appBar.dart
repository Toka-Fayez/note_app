import 'package:flutter/material.dart';
import 'package:noteapp/widgets/custom_search_button.dart';

class Custom_Appbar extends StatelessWidget {
  const Custom_Appbar({
    required this.title,
    super.key,
    required this.icon,
    this.onPressed,
  });
  final IconData icon;
  final String title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 55,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          Custom_SearchButton(
            myIcon: icon,
            onPressed: onPressed,
          )
        ],
      ),
    );
  }
}
