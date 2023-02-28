import 'package:flutter/material.dart';

import '../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
        required this.label,
        this.expand = false,
        this.fontSize,
        this.color,
        this.borderRadius,
        this.textEditingController,
        this.hint = '',
      })
      : super(key: key);

  final String label;
  final bool expand;
  final double? fontSize;
  final Color? color;
  final double? borderRadius;
  final TextEditingController? textEditingController;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController ?? TextEditingController(),
      minLines: null,
      maxLines: null,
      expands: expand,

      decoration: InputDecoration(
        label: Text(
          label,
          style: TextStyle(
            color: color ?? primaryColor,
            fontSize: fontSize ?? 18,
          ),
        ),
        hintText: hint ,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 10),
        ),
      ),
    );
  }
}
