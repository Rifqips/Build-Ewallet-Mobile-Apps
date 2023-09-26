import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:bank_sha/ui/widgets/forms.dart';
import 'package:bank_sha/ui/widgets/package_item.dart';
import 'package:bank_sha/ui/widgets/transfer_result_user_item.dart';
import 'package:flutter/material.dart';

class DataPackagePage extends StatelessWidget {
  const DataPackagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Paket Data',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            'Phone Number',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const CustomFormField(
            title: '+628',
            isShowTitle: false,
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Select Package',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              const PackageItem(
                amount: 10,
                price: 218000,
                isSelected: true,
              ),
              const PackageItem(
                amount: 25,
                price: 420000,
              ),
              const PackageItem(
                amount: 40,
                price: 2500000,
              ),
              const PackageItem(
                amount: 99,
                price: 5000000,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomFilledButton(
                title: 'Continue',
                onPressed: () async {
                if (await Navigator.pushNamed(context, '/pin') == true) {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/data-success', (route) => false);
                }
              },
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          )
        ],
      ),
    );
  }
}
