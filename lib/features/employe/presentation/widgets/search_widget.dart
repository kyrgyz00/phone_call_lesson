import 'package:flutter/material.dart';
import 'package:flutter_lesson3/internal/constants/text_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../internal/constants/color_helper.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42.h,
      width: 1.sw,
      decoration: BoxDecoration(
        color: ColorHeler.lightGrey2,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 14.w,
          ),
          Icon(
            Icons.search,
            size: 24.r,
          ),
          SizedBox(
            width: 8.w,
          ),
          Text(
            "Поиск",
            style: TextHelper.w300fs16.copyWith(color: ColorHeler.darkGrey),
          )
        ],
      ),
    );
  }
}
