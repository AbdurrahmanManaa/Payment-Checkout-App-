import 'package:paymentcheckoutapp/Features/checkout/data/models/amount_model/amount_model.dart';
import 'package:paymentcheckoutapp/Features/checkout/data/models/amount_model/details.dart';
import 'package:paymentcheckoutapp/Features/checkout/data/models/item_list_model/item.dart';
import 'package:paymentcheckoutapp/Features/checkout/data/models/item_list_model/item_list_model.dart';

({AmountModel amount, ItemListModel itemList}) getTransactionsData() {
  var amount = AmountModel(
    total: "100",
    currency: "USD",
    details: Details(
      subtotal: "100",
      shipping: "0",
      shippingDiscount: 0,
    ),
  );

  List<Item> items = [
    Item(
      name: "Apple",
      quantity: 4,
      price: "10",
      currency: "USD",
    ),
    Item(
      name: "Pineapple",
      quantity: 5,
      price: "12",
      currency: "USD",
    ),
  ];

  var itemList = ItemListModel(
    items: items,
  );

  return (amount: amount, itemList: itemList);
}
