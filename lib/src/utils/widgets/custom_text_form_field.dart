import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController _textEditingController;
  final Color? _fillColor;
  final bool _isReadOnly;

  const CustomTextFormField(
      {super.key,
      required TextEditingController textEditingController,
      Color? fillColor,
      bool isReadOnly = false})
      : _textEditingController = textEditingController,
        _fillColor = fillColor,
        _isReadOnly = isReadOnly;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: _isReadOnly,
      textAlign: TextAlign.end,
      textDirection: TextDirection.ltr,
      controller: _textEditingController,
      decoration: InputDecoration(
        filled: true,
        fillColor: _fillColor ?? AppColors.brightGreenColor,
        border: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.darkGreenColor)),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.darkGreenColor)),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.darkGreenColor)),
      ),
    );
  }
}
