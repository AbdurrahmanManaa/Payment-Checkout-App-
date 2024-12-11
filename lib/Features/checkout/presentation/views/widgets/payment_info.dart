import 'package:flutter/material.dart';
import 'package:paymentcheckoutapp/core/utils/app_styles.dart';

class PaymentInfo extends StatelessWidget {
  const PaymentInfo({super.key, required this.title, required this.value});

  final String title, value;

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
          value,
          style: AppStyles.styleSemiBold18,
        ),
      ],
    );
  }
}
