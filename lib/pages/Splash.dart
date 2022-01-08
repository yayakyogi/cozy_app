import 'package:cozy_app/theme.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 289,
            width: double.infinity,
            color: orangeColor,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(
            'assets/images/house.png',
            height: 433,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 50,
              ),
              const SizedBox(height: 30),
              Text(
                'Find Cozy House \nto Stay and Happy',
                style: fw_500.copyWith(color: blackColor, fontSize: 24),
              ),
              const SizedBox(height: 10),
              Text(
                'Stop membuang banyak waktu \npada tempat yang tidak habitable',
                style: fw_300.copyWith(color: greyColor, fontSize: 16),
              ),
              const SizedBox(height: 40),
              Container(
                width: 210,
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                decoration: BoxDecoration(
                    color: purpleColor,
                    borderRadius: BorderRadius.circular(17)),
                child: Text(
                  'Explore Now',
                  style: fw_500.copyWith(color: whiteColor, fontSize: 18),
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
