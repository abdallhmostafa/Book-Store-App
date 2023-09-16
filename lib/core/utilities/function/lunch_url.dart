import 'package:booka/constants.dart';
import 'package:booka/core/components/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchCustomUrl({required context,  String? url}) async {
  if (url != null) {
     Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kPrimaryBorderRadius),
          ),
          behavior: SnackBarBehavior.floating,
          content: const CustomText(
            text: 'Sorry!, Book Not Avaliable',
            fontSize: 14.0,
          )));
    }
  }
}
