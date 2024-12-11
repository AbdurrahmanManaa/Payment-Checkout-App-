class PaymentIntentInputModel {
  final String currency, amount, customerId;

  PaymentIntentInputModel(
      {required this.customerId, required this.currency, required this.amount});

  toJson() {
    return {
      'amount': '${amount}00',
      'currency': currency,
      'customer': customerId,
    };
  }
}
