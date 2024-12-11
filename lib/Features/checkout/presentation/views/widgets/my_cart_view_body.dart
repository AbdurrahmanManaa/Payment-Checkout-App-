import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paymentcheckoutapp/Features/checkout/data/repos/check_out_repo_impl.dart';
import 'package:paymentcheckoutapp/Features/checkout/presentation/manager/cubit/payment_cubit.dart';
import 'package:paymentcheckoutapp/Features/checkout/presentation/views/widgets/custom_button.dart';
import 'package:paymentcheckoutapp/Features/checkout/presentation/views/widgets/custom_divider.dart';
import 'package:paymentcheckoutapp/Features/checkout/presentation/views/widgets/order_info_list.dart';
import 'package:paymentcheckoutapp/Features/checkout/presentation/views/widgets/order_total_price.dart';
import 'package:paymentcheckoutapp/Features/checkout/presentation/views/widgets/payment_methods_bottom_sheet.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 18, bottom: 12),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              'assets/Group 6.png',
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const OrderInfoList(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: CustomDivider(
              height: 34,
            ),
          ),
          const OrderTotalPrice(
            title: 'Total',
            price: r'$50.97',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomButton(
            title: 'Complete Payment',
            onTap: () {
              showModalBottomSheet(
                backgroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                context: context,
                builder: (context) => BlocProvider(
                  create: (context) => PaymentCubit(
                    CheckOutRepoImpl(),
                  ),
                  child: const PaymentMethodsBottomSheet(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
