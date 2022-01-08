import 'package:cozy_app/model/city.dart';
import 'package:cozy_app/theme.dart';
import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  CityCard({Key? key, required this.city}) : super(key: key);

  City city;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        width: 120,
        height: 150,
        color: grayColor,
        child: Column(
          children: [
            Stack(children: [
              Image.asset(
                city.imageUrl,
                height: 102,
              ),
              Align(
                alignment: Alignment.topRight,
                child: city.isPopular
                    ? Container(
                        height: 30,
                        width: 50,
                        decoration: const BoxDecoration(
                            color: purpleColor,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(18))),
                        child: const Icon(
                          Icons.star,
                          color: orangeColor,
                        ),
                      )
                    : Container(),
              )
            ]),
            const SizedBox(height: 12),
            Text(
              city.name,
              style: fw_500.copyWith(color: blackColor, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
