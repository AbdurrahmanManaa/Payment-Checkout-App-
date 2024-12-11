import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paymentcheckoutapp/Features/checkout/presentation/views/widgets/card_info.dart';
import 'package:paymentcheckoutapp/Features/checkout/presentation/views/widgets/custom_divider.dart';
import 'package:paymentcheckoutapp/Features/checkout/presentation/views/widgets/order_total_price.dart';
import 'package:paymentcheckoutapp/Features/checkout/presentation/views/widgets/payment_info_list.dart';
import 'package:paymentcheckoutapp/core/utils/app_styles.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: const Color(0xffEDEDED),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 66, left: 22, right: 22),
        child: Column(
          children: [
            const Text(
              'Thank you!',
              style: AppStyles.styleMedium25,
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              'Your transaction was successful',
              style: AppStyles.styleRegular20,
            ),
            const SizedBox(
              height: 42,
            ),
            const PaymentInfoList(),
            const CustomDivider(
              height: 60,
            ),
            const OrderTotalPrice(
              title: 'Total',
              price: r'$50.97',
            ),
            const SizedBox(
              height: 30,
            ),
            const CardInfo(),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset('assets/barcode.svg'),
                Container(
                  width: 113,
                  height: 58,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        width: 1.50,
                        color: Color(0xff34A853),
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'PAID',
                      style: AppStyles.styleSemiBold24.copyWith(
                        color: const Color(0xff34A853),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: ((MediaQuery.sizeOf(context).height * .22 + 20) / 2) - 29,
            ),
          ],
        ),
      ),
    );
  }
}
