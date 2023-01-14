import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.text,
    this.type = ButtonType.primary,
    this.isLoading = false,
    required this.onTap,
  }) : super(key: key);

  final String text;
  final ButtonType type;
  final VoidCallback onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(40.r),
      onTap: onTap,
      child: Ink(
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(40.r),
          border: type == ButtonType.primary
              ? null
              : Border.all(
                  color: Theme.of(context).colorScheme.secondary,
                  width: 2.w,
                ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 24.h),
            child: isLoading
                ? const SizedBox(
                    height: 10,
                    width: 10,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  )
                : Text(
                    text,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: type == ButtonType.primary
                          ? Colors.white
                          : Theme.of(context).colorScheme.secondary,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}

enum ButtonType { primary, secondary }
