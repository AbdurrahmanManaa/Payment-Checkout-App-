import 'package:flutter/material.dart';
import 'package:paymentcheckoutapp/core/utils/app_styles.dart';

class OrderInfo extends StatelessWidget {
  const OrderInfo({super.key, required this.title, required this.price});

  final String title, price;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppStyles.styleRegular18,
        ),
        const Spacer(),
        Text(
          price,
          style: AppStyles.styleRegular18,
        ),
      ],
    );
  }
}
