import 'package:flutter/material.dart';
import 'package:saman_carriers_task/src/utils/text_styles.dart';

class CommonTextWidget extends StatelessWidget {
  final Color _textColor;
  final String _text;
  final double? _fontSize;

  const CommonTextWidget(
      {required Color textColor,
      required String text,
      double? fontSize,
      super.key})
      : _text = text,
        _textColor = textColor,
        _fontSize = fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: AppTextStyles.myTextStyleWithRegularWeight
          .copyWith(fontSize: _fontSize, color: _textColor),
    );
  }
}
