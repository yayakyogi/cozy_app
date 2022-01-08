import 'package:cozy_app/theme.dart';
import 'package:flutter/material.dart';

class SectionLabel extends StatelessWidget {
  const SectionLabel({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Text(
        title,
        style: fw_400.copyWith(color: blackColor, fontSize: 16),
      ),
    );
  }
}
