import 'package:bank_sha/shared/shared_metods.dart';
import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class PackageItem extends StatelessWidget {
  final int amount;
  final int price;
  final bool isSelected;
  const PackageItem({
    Key? key,
    required this.amount,
    required this.price,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 175,
      padding: const EdgeInsets.symmetric(
        horizontal: 13,
        vertical: 22,
      ),
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? blueColor : whiteColor,
            width: 2,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '${amount}GB',
            style: blackTextStyle.copyWith(fontSize: 32, fontWeight: medium),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            formatCurrency(price),
            style: greyTextStyle.copyWith(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
    ;
  }
}
