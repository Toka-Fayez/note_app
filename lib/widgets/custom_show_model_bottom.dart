import 'package:flutter/material.dart';
import 'package:noteapp/contstant.dart';

class CustomShowModelBottom extends StatelessWidget {
  const CustomShowModelBottom({super.key, this.onTap, this.isLoading = false});
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: isLoading
              ? const SizedBox(
                height: 45,
                width: 45,
               
                child: CircularProgressIndicator(
                  color: Colors.black,
                ))
              : const Text(
                  "Add",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
        ),
      ),
    );
  }
}
