import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_lesson3/features/employe/data/models/employe_model.dart';
import 'package:flutter_lesson3/internal/constants/color_helper.dart';
import 'package:flutter_lesson3/internal/constants/text_helper.dart';
import 'package:flutter_lesson3/internal/helpers/makephone.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomSheetWidget extends StatelessWidget {
  final int index;
  const BottomSheetWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorHeler.colorSheet,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: 30.h,
          left: 23.w,
          right: 23.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "Позвонить",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: ColorHeler.textBlack,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.cancel,
                    color: ColorHeler.cancelIcon,
                  ),
                  iconSize: 30.r,
                )
              ],
            ),
            SizedBox(height: 13.h),
            Text(
              employeModelList[index].name,
              style: TextHelper.w400fs16.copyWith(color: ColorHeler.textBlack),
            ),
            SizedBox(height: 51.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      "Телефон основной",
                      style: TextHelper.w400fs12
                          .copyWith(color: ColorHeler.colorNumberText),
                    ),
                    SizedBox(height: 2.h),
                    Text(
                      employeModelList[index].numbers.mainPhone,
                      style: TextHelper.w500fs16
                          .copyWith(color: ColorHeler.colorNumber),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () async {
                    log("message");
                    await makePhoneCall(
                        employeModelList[index].numbers.mainPhone);
                  },
                  icon: Icon(
                    Icons.phone,
                    color: ColorHeler.green,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                top: 14.h,
                bottom: 14.h,
              ),
              width: 375.w,
              height: 1.h,
              color: ColorHeler.greySheet,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      "Телефон рабочий",
                      style: TextHelper.w400fs12
                          .copyWith(color: ColorHeler.colorNumberText),
                    ),
                    SizedBox(height: 2.h),
                    Text(
                      employeModelList[index].numbers.workPhone,
                      style: TextHelper.w500fs16
                          .copyWith(color: ColorHeler.colorNumber),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.phone,
                    color: ColorHeler.green,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                top: 14.h,
                bottom: 14.h,
              ),
              width: 375.w,
              height: 1.h,
              color: ColorHeler.greySheet,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      "Телефон WhatsApp",
                      style: TextHelper.w400fs12
                          .copyWith(color: ColorHeler.colorNumberText),
                    ),
                    SizedBox(height: 2.h),
                    Text(
                      employeModelList[index].numbers.whatsAppPhone,
                      style: TextHelper.w500fs16
                          .copyWith(color: ColorHeler.colorNumber),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.phone,
                    color: ColorHeler.green,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                top: 14.h,
                bottom: 14.h,
              ),
              width: 375.w,
              height: 1.h,
              color: ColorHeler.greySheet,
            ),
          ],
        ),
      ),
    );
  }
}
