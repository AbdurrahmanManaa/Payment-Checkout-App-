import 'package:dartz/dartz.dart';
import 'package:paymentcheckoutapp/Features/checkout/data/models/payment_intent_input_model.dart';
import 'package:paymentcheckoutapp/Features/checkout/data/repos/check_out_repo.dart';
import 'package:paymentcheckoutapp/core/errors/failures.dart';
import 'package:paymentcheckoutapp/core/utils/services/stripe_service.dart';

class CheckOutRepoImpl extends CheckOutRepo {
  @override
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    final StripeService stripeService = StripeService();
    try {
      await stripeService.makePayment(
          paymentIntentInputModel: paymentIntentInputModel);
      return right(null);
    } catch (e) {
      return left(
        ServerFailure(
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
