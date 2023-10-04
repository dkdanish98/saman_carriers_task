import 'package:flutter/material.dart';
import 'package:saman_carriers_task/src/theme/app_colors.dart';
import 'package:saman_carriers_task/src/utils/constants.dart';
import 'package:saman_carriers_task/src/utils/widgets/common_text_widget.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> {
  final Color backgroundColor = AppColors.whiteColor;
  final Color headingsColor = AppColors.whiteColor;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const SizedBox(
                width: 19,
              ),
              CommonTextWidget(
                text: hassanGlassUrdu,
                textColor: headingsColor,
              ),
              const SizedBox(
                width: 19,
              ),
              Text(
                "00000",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                    color: headingsColor),
              ),
              const SizedBox(
                width: 11,
              ),
              CommonTextWidget(
                text: umairIqbalUrdu,
                textColor: headingsColor,
              ),
              const SizedBox(
                width: 11,
              )
            ]),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              thickness: 2,
              color: headingsColor,
            ),
          ),
          Expanded(child: buildBody(context))
        ],
      ),
    ));
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget buildBody(BuildContext context);
}
