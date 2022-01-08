import 'package:cozy_app/model/recomended.dart';
import 'package:cozy_app/theme.dart';
import 'package:flutter/material.dart';

class RecomendedCard extends StatelessWidget {
  RecomendedCard({Key? key, required this.recomended}) : super(key: key);

  Recomended recomended;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Stack(
              children: [
                Image.asset(
                  recomended.imageUrl,
                  height: 100,
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    height: 30,
                    width: 70,
                    decoration: const BoxDecoration(
                        color: purpleColor,
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(18))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.star,
                          color: orangeColor,
                        ),
                        Text(
                          '${recomended.rate}/5',
                          style:
                              fw_500.copyWith(color: whiteColor, fontSize: 13),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(recomended.name,
                  style: fw_500.copyWith(color: blackColor, fontSize: 18)),
              const SizedBox(height: 2),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: '\$${recomended.price}',
                      style: fw_500.copyWith(color: purpleColor, fontSize: 16)),
                  TextSpan(
                      text: ' / month',
                      style: fw_300.copyWith(color: greyColor, fontSize: 16)),
                ]),
              ),
              const SizedBox(height: 16),
              Text(
                '${recomended.city}, ${recomended.country}',
                style: fw_300.copyWith(color: greyColor),
              )
            ],
          ),
        ],
      ),
    );
  }
}
