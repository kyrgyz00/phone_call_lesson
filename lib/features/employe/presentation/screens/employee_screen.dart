// import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_lesson3/features/employe/data/models/employe_model.dart';

import 'package:flutter_lesson3/features/employe/presentation/widgets/avatarwidget.dart';
import 'package:flutter_lesson3/features/employe/presentation/widgets/phonecall.dart';
import 'package:flutter_lesson3/internal/constants/color_helper.dart';
import 'package:flutter_lesson3/internal/constants/text_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/search_widget.dart';

class EmployeeScreen extends StatelessWidget {
  const EmployeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Сотрудники",
                style: TextHelper.w700fs20.copyWith(
                  color: ColorHeler.textBlack,
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              const SearchWidget(),
              SizedBox(
                height: 12.h,
              ),
              Text(
                "У кого сегодня день рождения",
                style: TextHelper.w700fs16.copyWith(
                  color: ColorHeler.primary,
                ),
              ),
              AvatarCircle(),
              Text(
                "У кого сегодня день рождения",
                style: TextHelper.w700fs16.copyWith(
                  color: ColorHeler.textBlack,
                ),
              ),
              AvatarCircle(),
              Text(
                "Все сотрудники",
                style: TextHelper.w700fs16.copyWith(
                  color: ColorHeler.textBlack,
                ),
              ),
              Expanded(child: ProfileNameAndCall()),
            ],
          ),
        ),
      ),
    );
  }
}

