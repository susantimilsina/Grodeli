import 'dart:convert';
import 'package:grodeliecom/src/model/product.dart';

class CartItemModel {
  Product product;
  double quantity;
  CartItemModel({this.product, this.quantity});

  CartItemModel.fromJSON(Map<String, dynamic> jsonMap)
      : product = Product.fromJSON(jsonMap['product']),
        quantity =double.parse(jsonMap['qty'].toString());

  static Map<String, dynamic> toMap(CartItemModel item) => {
    'product': item.product,
    'qty': item.quantity,
  };

  static String encodeProducts(List<CartItemModel> items) => json.encode(
    items
        .map<Map<String, dynamic>>((item) => CartItemModel.toMap(item))
        .toList(),
  );

  static List<CartItemModel> decodeProducts(String items) =>
      (json.decode(items) as List<dynamic>)
          .map<CartItemModel>((item) => CartItemModel.fromJSON(item))
          .toList();
}
