import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key, required this.onTap, required this.text});

  final VoidCallback onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
              maximumSize: const Size(double.infinity, 50),
            ),
            onPressed: () {
              onTap;
            },
            child: Text(
              text,
            ),
          )),
    );
  }
}
