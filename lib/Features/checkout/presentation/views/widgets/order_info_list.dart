import 'package:flutter/material.dart';
import 'package:paymentcheckoutapp/Features/checkout/presentation/views/widgets/order_info.dart';

class OrderInfoList extends StatelessWidget {
  const OrderInfoList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        OrderInfo(
          title: 'Order Subtotal',
          price: r'$42.97',
        ),
        SizedBox(
          height: 3,
        ),
        OrderInfo(
          title: 'Discount',
          price: r'$0',
        ),
        SizedBox(
          height: 3,
        ),
        OrderInfo(
          title: 'Shipping',
          price: r'$8',
        ),
      ],
    );
  }
}
