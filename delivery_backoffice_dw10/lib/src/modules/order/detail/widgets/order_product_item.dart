import 'package:flutter/material.dart';

import '../../../../core/extensions/formatter_extensions.dart';
import '../../../../core/ui/styles/text_styles.dart';
import '../../../../dto/order/order_product_dto.dart';

class OrderProductItem extends StatelessWidget {
  final OrderProductDTO orderProducts;

  const OrderProductItem({
    required this.orderProducts,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Text(
              orderProducts.product.name,
              style: context.textStyles.textRegular,
            ),
          ),
          Text(
            '${orderProducts.amount}',
            style: context.textStyles.textRegular,
          ),
          Expanded(
            child: Text(
              orderProducts.totalPrice.currencyPTBR,
              textAlign: TextAlign.end,
              style: context.textStyles.textRegular,
            ),
          ),
        ],
      ),
    );
  }
}
