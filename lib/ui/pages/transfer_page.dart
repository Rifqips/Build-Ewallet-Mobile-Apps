import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:bank_sha/ui/widgets/forms.dart';
import 'package:bank_sha/ui/widgets/transfer_recent_user_item.dart';
import 'package:bank_sha/ui/widgets/transfer_result_user_item.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transfer'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            'Search',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const CustomFormField(
            title: 'by username',
            isShowTitle: false,
          ),
          // buildRecentUser(),
          buildResult(context),
        ],
      ),
    );
  }

  Widget buildRecentUser() {
    return Container(
      margin: const EdgeInsets.only(
        top: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent User',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const TranserRecentUserItem(
            imgUrl: 'assets/img_friend1.png',
            name: 'Yonna Jie',
            username: 'yoenna',
            isVerified: true,
          ),
          const TranserRecentUserItem(
            imgUrl: 'assets/img_friend2.png',
            name: 'John Hi',
            username: 'jhi',
            isVerified: false,
          ),
          const TranserRecentUserItem(
            imgUrl: 'assets/img_friend3.png',
            name: 'Masayoshi',
            username: 'orm',
            isVerified: false,
          ),
        ],
      ),
    );
  }

  Widget buildResult(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Result',
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
              const TransferResultUserItem(
                imgUrl: 'assets/img_friend1.png',
                name: 'Yonna Jie',
                username: 'yoenna',
                isVerified: true,
                isSelected: true,
              ),
              const TransferResultUserItem(
                imgUrl: 'assets/img_friend2.png',
                name: 'Yonne Ka',
                username: 'yoenyu',
              ),
              const TransferResultUserItem(
                imgUrl: 'assets/img_friend2.png',
                name: 'rifqi',
                username: 'rifqips',
                isVerified: true,
              ),
              const TransferResultUserItem(
                imgUrl: 'assets/img_friend3.png',
                name: 'joeni',
                username: 'jons',
              ),
              const TransferResultUserItem(
                imgUrl: 'assets/img_friend1.png',
                name: 'Yonna Jie',
                username: 'yoenna',
                isVerified: true,
              ),
              const TransferResultUserItem(
                imgUrl: 'assets/img_friend2.png',
                name: 'Yonne Ka',
                username: 'yoenyu',
              ),
              const SizedBox(
                height: 20,
              ),
              CustomFilledButton(
                title: 'Continue',
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/transfer-amount', (route) => false);
                },
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
