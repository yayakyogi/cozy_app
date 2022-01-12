import 'package:cozy_app/model/recommended.dart';
import 'package:cozy_app/theme.dart';
import 'package:flutter/material.dart';

class RecommendedCard extends StatelessWidget {
  const RecommendedCard(this.recommended, {Key? key}) : super(key: key);
  final Recommended recommended;

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
                Image.network(
                  recommended.imageUrl,
                  width: 130,
                  height: 110,
                  fit: BoxFit.cover,
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
                          '${recommended.rate}/5',
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
              Text(recommended.name,
                  style: fw_500.copyWith(color: blackColor, fontSize: 18)),
              const SizedBox(height: 2),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: '\$${recommended.price}',
                      style: fw_500.copyWith(color: purpleColor, fontSize: 16)),
                  TextSpan(
                      text: ' / month',
                      style: fw_300.copyWith(color: greyColor, fontSize: 16)),
                ]),
              ),
              const SizedBox(height: 16),
              Text(
                '${recommended.city}, ${recommended.country}',
                style: fw_300.copyWith(color: greyColor),
              )
            ],
          ),
        ],
      ),
    );
  }
}
