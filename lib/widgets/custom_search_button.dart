import 'package:flutter/material.dart';

class Custom_SearchButton extends StatelessWidget {
  const Custom_SearchButton({
    super.key,
    required this.myIcon, this.onPressed,
  });
  final IconData myIcon;
 final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: const Color.fromARGB(10, 255, 255, 255),
        borderRadius: BorderRadius.circular(16),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon:Icon( myIcon,
        size: 30,)
      ),
    );
  }
}
