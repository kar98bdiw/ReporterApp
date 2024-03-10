import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function() onTap;
  const CustomButton({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(),
        ),
        padding: const EdgeInsets.all(10),
        child: Center(child: Text(title)),
      ),
    );
  }
}
