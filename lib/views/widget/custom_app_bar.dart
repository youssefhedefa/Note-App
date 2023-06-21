import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.text, required this.icon, this.onPressed}) : super(key: key);

  final String text;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: 16.w,
        end: 16.w,
        top: 34.h,
      ),
      child: Row(
        children: [
           Text(
            text,
            style: TextStyle(
              fontSize: 28.sp,
            ),
          ),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.06),
              borderRadius: BorderRadius.circular(20)
            ),
            child: IconButton(
              onPressed: onPressed,
              icon: Icon(
                icon,
                size: 28.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
