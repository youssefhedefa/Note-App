import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.text, required this.icon, this.onPressed}) : super(key: key);

  final String text;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(
        start: 16,
        end: 16,
        top: 34,
      ),
      child: Row(
        children: [
           Text(
            text,
            style: const TextStyle(
              fontSize: 28,
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
                size: 28,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
