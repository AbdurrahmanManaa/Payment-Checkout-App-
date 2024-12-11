import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:paymentcheckoutapp/Features/checkout/presentation/views/my_cart_view.dart';
import 'package:paymentcheckoutapp/core/utils/api_keys.dart';

void main() {
  Stripe.publishableKey = ApiKeys.stripePublishableKey;

  runApp(const PaymentCheckoutApp());
}

class PaymentCheckoutApp extends StatelessWidget {
  const PaymentCheckoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: const MyCartView(),
    );
  }
}
