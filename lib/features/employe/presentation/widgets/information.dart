import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_lesson3/features/employe/data/models/employe_model.dart';
import 'package:flutter_lesson3/internal/constants/color_helper.dart';
import 'package:flutter_lesson3/internal/constants/text_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Information extends StatelessWidget {
  final String nameType;
  final String nameWork;
  const Information({
    super.key,
    required this.nameType,
    required this.nameWork,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 23.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            nameType,
            style: TextHelper.w400fs12.copyWith(
              color: ColorHeler.colorNumberText,
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Text(
            nameWork,
            style: TextHelper.w500fs16.copyWith(
              color: ColorHeler.colorNumber,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 14.h,
              bottom: 14.h,
            ),
            height: 1.h,
            color: ColorHeler.lightGrey2,
          ),
        ],
      ),
    );
  }
}
