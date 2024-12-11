import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paymentcheckoutapp/Features/checkout/data/models/payment_intent_input_model.dart';
import 'package:paymentcheckoutapp/Features/checkout/data/repos/check_out_repo.dart';

part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit(this.checkOutRepo) : super(PaymentInitial());

  final CheckOutRepo checkOutRepo;
  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    emit(PaymentLoading());

    var data = await checkOutRepo.makePayment(
        paymentIntentInputModel: paymentIntentInputModel);

    data.fold(
      (failure) => emit(
        PaymentFailure(
          failure.errorMessage,
        ),
      ),
      (success) => emit(
        PaymentSuccess(),
      ),
    );
  }

  @override
  void onChange(Change<PaymentState> change) {
    super.onChange(change);
    log(change.toString());
  }
}
