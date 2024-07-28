import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Assets.imagesBackground),
          ),
          color: const Color(0xff4eb7f2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          children: [
            ListTile(
              contentPadding:
                  const EdgeInsets.only(left: 31, right: 40, top: 16),
              title: Text(
                "Name Card",
                style: AppStyle.styleMeduinm16.copyWith(color: Colors.white),
              ),
              subtitle: const Text(
                "Syah Bandi",
                style: AppStyle.styleMeduinm20,
              ),
              trailing: SvgPicture.asset(
                Assets.imagesGallery,
              ),
            ),
            const Expanded(
              child: SizedBox(),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 48 - 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "0918 8124 0042 8129",
                    style: AppStyle.stylesemiBold24.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "12/20 - 124",
                    style: AppStyle.styleRegular16.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 54 - 28,
            )
          ],
        ),
      ),
    );
  }
}
