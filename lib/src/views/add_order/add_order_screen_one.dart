import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:saman_carriers_task/src/routes/routes_name.dart';
import 'package:saman_carriers_task/src/states/base_state.dart';
import 'package:saman_carriers_task/src/utils/widgets/common_text_widget.dart';
import 'package:saman_carriers_task/src/utils/widgets/custom_drop_down.dart';
import 'package:saman_carriers_task/src/utils/widgets/custom_text_form_field.dart';

import '../../theme/app_colors.dart';
import '../../utils/constants.dart';

class AddOrderScreen extends StatefulWidget {
  const AddOrderScreen({super.key});

  @override
  State<AddOrderScreen> createState() => _AddOrderScreenState();
}

class _AddOrderScreenState extends BaseState<AddOrderScreen> {
  @override
  Color get headingsColor => AppColors.paleGreenColor;

  @override
  Color get backgroundColor => AppColors.darkGreenColor;

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController duqaanKPaiseController = TextEditingController();
  TextEditingController noNameController = TextEditingController();

  @override
  Widget buildBody(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            children: [
              const SizedBox(
                width: 35,
              ),
              Expanded(
                child: SizedBox(
                  height: 50,
                  child: CustomTextFormField(
                    textEditingController: nameController,
                  ),
                ),
              ),
              const SizedBox(
                width: 47,
              ),
              const CommonTextWidget(
                text: naamUrdu,
                textColor: AppColors.paleGreenColor,
                fontSize: 36,
              ),
              const SizedBox(
                width: 28,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            children: [
              const SizedBox(
                width: 35,
              ),
              Expanded(
                child: SizedBox(
                  height: 50,
                  child: CustomTextFormField(
                    textEditingController: phoneController,
                  ),
                ),
              ),
              const SizedBox(
                width: 14,
              ),
              const CommonTextWidget(
                text: phoneNumberUrdu,
                textColor: AppColors.paleGreenColor,
                fontSize: 36,
              ),
              const SizedBox(
                width: 15,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            children: [
              const SizedBox(
                width: 35,
              ),
              Expanded(
                child: SizedBox(
                    height: 50,
                    child: CustomDropDown(
                        selectedValue: null,
                        listOfDropDownItems: const [],
                        onChangedFunction: (value) {})),
              ),
              const SizedBox(
                width: 25,
              ),
              const CommonTextWidget(
                text: taakUrdu,
                textColor: AppColors.paleGreenColor,
                fontSize: 36,
              ),
              const SizedBox(
                width: 39,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlutterSwitch(
                height: 27,
                width: 50,
                toggleSize: 15,
                padding: 5,
                toggleColor: AppColors.darkGreenColor,
                activeColor: AppColors.paleGreenColor,
                inactiveColor: AppColors.paleGreenColor,
                value: false,
                onToggle: (bool value) {},
              ),
              const SizedBox(
                width: 10,
              ),
              const CommonTextWidget(
                text: muqararraQeemat,
                textColor: AppColors.paleGreenColor,
                fontSize: 36,
              ),
              const SizedBox(
                width: 23,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(child: Container()),
              const CommonTextWidget(
                text: gariKiQisaamUrdu,
                textColor: AppColors.paleGreenColor,
                fontSize: 36,
              ),
              Expanded(child: Container()),
              const CommonTextWidget(
                text: dukkanKPaiseUrdu,
                textColor: AppColors.paleGreenColor,
                fontSize: 36,
              ),
              const SizedBox(
                width: 23,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: SizedBox(
                    height: 50,
                    child: CustomDropDown(
                        isDropDownIconPositionLeft: true,
                        backgroundColor: AppColors.paleGreenColor,
                        selectedValue: null,
                        listOfDropDownItems: const [],
                        onChangedFunction: (value) {})),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: SizedBox(
                  height: 50,
                  child: TextFormField(
                    textAlign: TextAlign.end,
                    textDirection: TextDirection.ltr,
                    controller: duqaanKPaiseController,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: AppColors.paleGreenColor,
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: AppColors.darkGreenColor)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: AppColors.darkGreenColor)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: AppColors.darkGreenColor)),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: SizedBox(
                    height: 50,
                    child: CustomDropDown(
                        isDropDownIconPositionLeft: true,
                        backgroundColor: AppColors.paleGreenColor,
                        selectedValue: null,
                        listOfDropDownItems: const [],
                        onChangedFunction: (value) {})),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: SizedBox(
                    height: 50,
                    child: CustomDropDown(
                        isDropDownIconPositionLeft: true,
                        backgroundColor: AppColors.paleGreenColor,
                        selectedValue: null,
                        listOfDropDownItems: const [],
                        onChangedFunction: (value) {})),
              ),
              const SizedBox(
                width: 10,
              )
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: Center(
            child: CommonTextWidget(
              text: samanUrdu,
              textColor: AppColors.paleGreenColor,
              fontSize: 36,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RoutesName.addOrderSecondScreen);
                },
                style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(
                        const Size.fromHeight(50)),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(AppColors.whiteColor)),
                child: const CommonTextWidget(
                  text: samanDakhilKareUrdu,
                  textColor: AppColors.darkGreenColor,
                  fontSize: 28,
                ),
              ),
            ),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Row(
            children: [
              const SizedBox(
                width: 7,
              ),
              Transform.scale(
                scale: 2.5,
                child: Checkbox(
                    activeColor: AppColors.paleGreenColor,
                    checkColor: AppColors.darkGreenColor,
                    value: true,
                    onChanged: (value) {}),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: SizedBox(
                  height: 50,
                  child: CustomTextFormField(
                    fillColor: AppColors.paleGreenColor,
                    textEditingController: noNameController,
                    isReadOnly: true,
                  ),
                ),
              ),
              const SizedBox(
                width: 71,
              ),
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                    color: AppColors.deepFirColor,
                    border:
                        Border.all(color: AppColors.paleGreenColor, width: 2)),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CommonTextWidget(
                        text: fridgeAcUrdu,
                        textColor: AppColors.whiteColor,
                        fontSize: 26,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "4",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: AppColors.whiteColor),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CommonTextWidget(
                            text: kursiUrdu,
                            textColor: AppColors.whiteColor,
                            fontSize: 26,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Center(
              child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                fixedSize:
                    MaterialStateProperty.all<Size>(const Size.fromHeight(50)),
                backgroundColor:
                    MaterialStateProperty.all<Color>(AppColors.whiteColor)),
            child: const CommonTextWidget(
              text: adraajKare,
              textColor: AppColors.darkGreenColor,
              fontSize: 36,
            ),
          )),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
