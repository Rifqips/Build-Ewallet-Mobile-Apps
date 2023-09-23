import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeTipsItem extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String urlLink;

  const HomeTipsItem({
    Key? key,
    required this.imgUrl,
    required this.title,
    required this.urlLink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {

        if (await canLaunchUrl(Uri.parse(urlLink))) {
          launchUrl(Uri.parse(urlLink));
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
              child: Image.asset(
                imgUrl,
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
                title,
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
