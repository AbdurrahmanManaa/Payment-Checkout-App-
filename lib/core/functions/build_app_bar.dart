import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:paymentcheckoutapp/core/utils/app_styles.dart';

AppBar buildAppBar({String? title}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    leading: Center(
      child: SvgPicture.asset(
        'assets/Arrow 1.svg',
        width: 30,
      ),
    ),
    centerTitle: true,
    title: Text(
      title ?? '',
      style: AppStyles.styleMedium25,
    ),
  );
}
