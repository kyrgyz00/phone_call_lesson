import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_lesson3/features/employe/data/models/employe_model.dart';
import 'package:flutter_lesson3/features/employe/presentation/widgets/information.dart';
import 'package:flutter_lesson3/internal/constants/color_helper.dart';
import 'package:flutter_lesson3/internal/constants/text_helper.dart';
import 'package:flutter_lesson3/internal/helpers/makephone.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  final EmployeModel employeModel;
  const ProfileScreen({super.key, required this.employeModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorHeler.appBarColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_outlined,
            color: ColorHeler.textBlack,
          ),
        ),
      ),
      backgroundColor: ColorHeler.backgroundCol,
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 18.h,
                bottom: 18.h,
              ),
              width: 114.r,
              height: 114.r,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(employeModel.avatarUrl),
                ),
              ),
            ),
            Text(
              employeModel.name,
              style: TextHelper.w500fs20.copyWith(
                color: ColorHeler.textBlack,
              ),
            ),
            SizedBox(
              height: 11.h,
            ),
            Text(
              employeModel.workPositon,
              style: TextHelper.w400fs16.copyWith(
                color: ColorHeler.workPositionCol,
              ),
            ),
            SizedBox(
              height: 39.h,
            ),
            Information(
              nameType: 'Направление',
              nameWork: employeModel.dimantsion,
            ),
            Information(
              nameType: 'Отдел',
              nameWork: employeModel.deppartment,
            ),
            Information(
              nameType: 'Email',
              nameWork: employeModel.email,
            ),
            Information(
              nameType: 'Дата рождения',
              nameWork: "",
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Information(
                  nameType: 'Телефон основной',
                  nameWork: employeModel.numbers.mainPhone,
                ),
                Spacer(),
                IconButton(
                  onPressed: () async {
                    log("message");
                    await makePhoneCall(employeModel.numbers.mainPhone);
                  },
                  icon: Icon(
                    Icons.phone,
                    color: ColorHeler.green,
                  ),
                ),
                SizedBox(
                  width: 22.w,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
