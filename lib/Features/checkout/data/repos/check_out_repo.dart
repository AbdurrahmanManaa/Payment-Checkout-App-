import 'package:dartz/dartz.dart';
import 'package:paymentcheckoutapp/Features/checkout/data/models/payment_intent_input_model.dart';
import 'package:paymentcheckoutapp/core/errors/failures.dart';

abstract class CheckOutRepo {
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel});
}
