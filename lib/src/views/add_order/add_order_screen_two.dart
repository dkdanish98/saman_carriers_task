import 'package:flutter/material.dart';
import 'package:saman_carriers_task/src/states/base_state.dart';
import 'package:saman_carriers_task/src/utils/widgets/common_text_widget.dart';

import '../../theme/app_colors.dart';
import '../../utils/constants.dart';

class AddOrderScreenTwo extends StatefulWidget {
  const AddOrderScreenTwo({super.key});

  @override
  State<AddOrderScreenTwo> createState() => _AddOrderScreenTwoState();
}

class _AddOrderScreenTwoState extends BaseState<AddOrderScreenTwo> {
  @override
  Color get headingsColor => AppColors.darkGreenColor;

  @override
  Color get backgroundColor => AppColors.whiteColor;

  List<String> icons = [
    AppAssets.brickIcon,
    AppAssets.cowIcon,
    AppAssets.refrigeratorIcon,
    AppAssets.couchIcon
  ];
  List<String> names = [
    miniRefrigeratorUrdu,
    refrigeratorUrdu,
    freezerUrdu,
    washingMachineUrdu,
    washingMachineWithDryerUrdu,
    acUrdu,
    waterDispenserUrdu,
    lcdTvUrdu,
    fanUrdu,
    microwaveUrdu,
    chulhaUrdu
  ];

  @override
  Widget buildBody(BuildContext context) {
    return ListView(
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              containerWithAsset(context, icons[0]),
              containerWithAsset(context, icons[1]),
              containerWithAsset(context, icons[2]),
              containerWithAsset(context, icons[3]),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: names.length,
              itemBuilder: (context, index) {
                return addedItemWidget(context, names[index]);
              }),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Container(
                height: 90,
                decoration: BoxDecoration(
                    color: AppColors.deepFirColor,
                    border:
                        Border.all(color: AppColors.darkGreenColor, width: 2)),
              ),
            )),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(
                        const Size.fromHeight(50)),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        AppColors.darkGreenColor)),
                child: const CommonTextWidget(
                  text: wapisUrdu,
                  textColor: AppColors.whiteColor,
                  fontSize: 36,
                ),
              ),
            ),
          )),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }

  Widget containerWithAsset(BuildContext context, String assetName) {
    return Container(
      height: 60,
      width: 60,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.darkTealColor),
        borderRadius: const BorderRadius.all(Radius.circular(2)),
        color: AppColors.darkGreenColor,
      ),
      child: Image.asset(assetName),
    );
  }

  Widget addedItemWidget(BuildContext context, String name) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 45, right: 45),
      child: Row(
        children: [
          Image.asset(
            AppAssets.addIcon,
            height: 35,
            width: 35,
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.darkGreenColor),
                  borderRadius: const BorderRadius.all(Radius.circular(4)),
                  color: AppColors.darkTealColor),
              child: Center(
                  child: CommonTextWidget(
                text: name,
                textColor: AppColors.whiteColor,
                fontSize: 28,
              )),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Image.asset(
            AppAssets.subtractionIcon,
            height: 35,
            width: 35,
          ),
        ],
      ),
    );
  }
}
