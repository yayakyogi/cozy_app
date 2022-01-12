import 'package:cozy_app/theme.dart';
import 'package:flutter/material.dart';

class Facilities extends StatelessWidget {
  const Facilities({
    Key? key,
    this.title = '',
    this.icons = '',
    this.total = '',
  }) : super(key: key);

  final String title;
  final String icons;
  final String total;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(icons, width: 32),
        const SizedBox(height: 8),
        RichText(
          text: TextSpan(children: [
            TextSpan(text: total, style: fw_500.copyWith(color: purpleColor)),
            TextSpan(
                text: ' ${title}', style: fw_300.copyWith(color: greyColor)),
          ]),
        ),
      ],
    );
  }
}
