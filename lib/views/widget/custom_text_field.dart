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
        this.onSaved,
        this.validator,
        this.keyboardType,
      })
      : super(key: key);

  final String label;
  final bool expand;
  final double? fontSize;
  final Color? color;
  final double? borderRadius;
  final TextEditingController? textEditingController;
  final String hint;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;

@override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController ?? TextEditingController(),
      minLines: null,
      maxLines: null,
      expands: expand,
      onSaved: onSaved,
      validator: validator,
      keyboardType: keyboardType,

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
