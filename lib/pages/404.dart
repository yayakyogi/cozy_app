import 'package:cozy_app/theme.dart';
import 'package:flutter/material.dart';

class NotFound404 extends StatelessWidget {
  const NotFound404({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: whiteColor,
        height: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/404.png',
                    width: 300,
                    height: 85,
                  ),
                  const SizedBox(height: 70),
                  Text(
                    'Where are you going?',
                    style: fw_500.copyWith(color: blackColor, fontSize: 24),
                  ),
                  const SizedBox(height: 14),
                  Text(
                    'Seems like the page that you were requested is already gone',
                    style: fw_300.copyWith(color: greyColor, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 50),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 210,
                      height: 50,
                      decoration: BoxDecoration(
                          color: purpleColor,
                          borderRadius: BorderRadius.circular(17)),
                      child: Center(
                        child: Text(
                          'Back to Home',
                          style:
                              fw_500.copyWith(color: whiteColor, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      )),
    );
  }
}
