import 'package:cozy_app/model/guidance.dart';
import 'package:cozy_app/theme.dart';
import 'package:flutter/material.dart';

class GuidanceCard extends StatelessWidget {
  GuidanceCard({Key? key, required this.guidance}) : super(key: key);

  Guidance guidance;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.asset(guidance.imageUrl, width: 80),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(guidance.name,
                  style: fw_500.copyWith(color: blackColor, fontSize: 18)),
              const SizedBox(height: 4),
              Text('Updated ${guidance.datetime}',
                  style: fw_300.copyWith(color: greyColor)),
            ],
          ),
          const Spacer(),
          Image.asset(
            'assets/icons/ic_right_outline.png',
            width: 24,
          )
        ],
      ),
    );
  }
}
