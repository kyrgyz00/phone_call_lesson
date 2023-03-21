import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_lesson3/features/employe/data/models/employe_model.dart';
import 'package:flutter_lesson3/features/employe/presentation/screens/employee_screen.dart';
import 'package:flutter_lesson3/features/employe/presentation/screens/profile_screen.dart';
import 'package:flutter_lesson3/features/employe/presentation/widgets/bottomsheet.dart';
import 'package:flutter_lesson3/internal/constants/color_helper.dart';
import 'package:flutter_lesson3/internal/constants/text_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileNameAndCall extends StatelessWidget {
  const ProfileNameAndCall({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16.r),
      child: ListView.separated(
        separatorBuilder: ((context, index) {
          return SizedBox(height: 16.h);
        }),
        itemCount: employeModelList.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          log(employeModelList[index].avatarUrl);
          log(employeModelList[index].name);
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => ProfileScreen(
                            employeModel: EmployeModel(
                                avatarUrl: employeModelList[index].avatarUrl,
                                name: employeModelList[index].name,
                                workPositon:
                                    employeModelList[index].workPositon,
                                dimantsion: employeModelList[index].dimantsion,
                                deppartment:
                                    employeModelList[index].deppartment,
                                email: employeModelList[index].email,
                                birthDate: employeModelList[index].birthDate,
                                numbers: employeModelList[index].numbers),
                          ))));
            },
            child: Container(
              width: 1.sw,
              height: 64.h,
              margin: EdgeInsets.only(top: 16.h),
              decoration: BoxDecoration(
                color: ColorHeler.white,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Row(
                children: [
                  SizedBox(width: 16.w),
                  Container(
                    width: 42.w,
                    height: 42.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(employeModelList[index].avatarUrl),
                      ),
                    ),
                  ),
                  SizedBox(width: 16.w),
                  Expanded(
                    child: Text(
                      (employeModelList[index].name),
                      style: TextHelper.w400fs16
                          .copyWith(color: ColorHeler.nameTextBlack),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(30.r),
                            ),
                          ),
                          builder: (BuildContext context) {
                            return BottomSheetWidget(
                              index: index,
                            );
                          });
                    },
                    icon: Icon(
                      Icons.phone,
                      color: ColorHeler.green,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
