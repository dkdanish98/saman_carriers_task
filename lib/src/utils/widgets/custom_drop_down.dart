import 'package:flutter/material.dart';
import 'package:saman_carriers_task/src/theme/app_colors.dart';
import 'package:saman_carriers_task/src/utils/text_styles.dart';

class CustomDropDown extends StatefulWidget {
  final String? _selectedValue;
  final List<String> _listOfDropDownItems;
  final void Function(String?) _onChangedFunction;
  final bool _isDropDownIconPositionLeft;
  final String? _hintText;
  final double? _hintFontSize;
  final Color? _backgroundColor;

  const CustomDropDown({
    super.key,
    required String? selectedValue,
    required List<String> listOfDropDownItems,
    required void Function(String?) onChangedFunction,
    bool isDropDownIconPositionLeft = false,
    String? hintText,
    double? hintFontSize,
    Color? backgroundColor,
  })  : _selectedValue = selectedValue,
        _listOfDropDownItems = listOfDropDownItems,
        _onChangedFunction = onChangedFunction,
        _isDropDownIconPositionLeft = isDropDownIconPositionLeft,
        _hintText = hintText,
        _hintFontSize = hintFontSize,
        _backgroundColor = backgroundColor;

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget._backgroundColor ?? AppColors.brightGreenColor,
      child: DropdownButton<String>(
          hint: Text(
            widget._hintText ?? "",
            style: AppTextStyles.myTextStyleWithRegularWeight
                .copyWith(fontSize: widget._hintFontSize),
          ),
          iconDisabledColor: AppColors.darkGreenColor,
          iconEnabledColor: AppColors.darkGreenColor,
          iconSize: 45,
          value: widget._selectedValue,
          isExpanded: widget._isDropDownIconPositionLeft,
          underline: Container(),
          items: widget._listOfDropDownItems
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 15),
              ),
            );
          }).toList(),
          onChanged: widget._onChangedFunction),
    );
  }
}
