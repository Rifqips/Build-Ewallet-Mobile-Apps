import 'package:bank_sha/models/tip_model.dart';
import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeTipsItem extends StatelessWidget {
  final TipModel tip;

  const HomeTipsItem({
    Key? key,
    required this.tip
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {

        if (await canLaunchUrl(Uri.parse(tip.url.toString()))) {
          launchUrl(Uri.parse(tip.url.toString()));
        }
      },
      child: Container(
        width: 150,
        height: 170,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: whiteColor),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              child: Image.network(
                tip.thumbnail.toString(),
                height: 100,
                width: 150,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                tip.title.toString(),
                style: blackTextStyle.copyWith(
                  fontWeight: medium,
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
