import 'package:flutter/material.dart';
import 'package:paymentcheckoutapp/core/utils/app_styles.dart';

class OrderTotalPrice extends StatelessWidget {
  const OrderTotalPrice({super.key, required this.title, required this.price});

  final String title, price;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppStyles.styleSemiBold24,
        ),
        const Spacer(),
        Text(
          price,
          style: AppStyles.styleSemiBold24,
        ),
      ],
    );
  }
}
