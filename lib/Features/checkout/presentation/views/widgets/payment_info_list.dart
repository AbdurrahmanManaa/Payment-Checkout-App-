import 'package:flutter/material.dart';
import 'package:paymentcheckoutapp/Features/checkout/presentation/views/widgets/payment_info.dart';

class PaymentInfoList extends StatelessWidget {
  const PaymentInfoList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        PaymentInfo(
          title: 'Date',
          value: '01/24/2023',
        ),
        SizedBox(
          height: 20,
        ),
        PaymentInfo(
          title: 'Time',
          value: '10:15 AM',
        ),
        SizedBox(
          height: 20,
        ),
        PaymentInfo(
          title: 'To',
          value: 'Sam Louis',
        ),
      ],
    );
  }
}
