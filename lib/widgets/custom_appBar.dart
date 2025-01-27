import 'package:flutter/material.dart';
import 'package:noteapp/widgets/custom_search_button.dart';

class Custom_Appbar extends StatelessWidget {
  const Custom_Appbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 55,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Notes",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          Custom_SearchButton()
        ],
      ),
    );
  }
}
