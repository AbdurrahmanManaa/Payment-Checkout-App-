import 'package:flutter/material.dart';
import 'package:paymentcheckoutapp/Features/checkout/presentation/views/widgets/payment_method_item.dart';

class PaymentMethodItemListView extends StatefulWidget {
  const PaymentMethodItemListView({super.key});

  static const List<String> items = [
    'assets/credit_card.svg',
    'assets/paypal.svg',
  ];

  @override
  State<PaymentMethodItemListView> createState() =>
      _PaymentMethodItemListViewState();
}

class _PaymentMethodItemListViewState extends State<PaymentMethodItemListView> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: PaymentMethodItemListView.items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: GestureDetector(
              onTap: () {
                activeIndex = index;
                setState(() {});
              },
              child: PaymentMethodItem(
                image: PaymentMethodItemListView.items[index],
                isActive: activeIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
