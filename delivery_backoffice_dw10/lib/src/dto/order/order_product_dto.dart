import '../../models/product_model.dart';

class OrderProductDTO {
  final ProductModel product;
  final int amount;
  final double totalPrice;

  OrderProductDTO({
    required this.product,
    required this.amount,
    required this.totalPrice,
  });
}
