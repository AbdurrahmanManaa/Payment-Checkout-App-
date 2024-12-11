import 'package:flutter/material.dart';
import 'package:paymentcheckoutapp/core/functions/execute_paypal_payment.dart';
import 'package:paymentcheckoutapp/core/functions/get_transactions_data.dart';

void triggerPayPalPayment(BuildContext context) {
  var transactionsData = getTransactionsData();

  executePayPalPayment(context, transactionsData);
}
