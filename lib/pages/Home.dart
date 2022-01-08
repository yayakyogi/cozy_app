import 'package:cozy_app/model/city.dart';
import 'package:cozy_app/theme.dart';
import 'package:cozy_app/widget/city_card.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          const SizedBox(height: 24),
          // * Title
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Eplore Now',
                    style: fw_500.copyWith(color: blackColor, fontSize: 24),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    'Mencari kosan yang cozy',
                    style: fw_300.copyWith(color: greyColor, fontSize: 16),
                  ),
                  const SizedBox(height: 30),
                ],
              )),

          // * Popular
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Text(
              'Popular Cities',
              style: fw_400.copyWith(color: blackColor, fontSize: 16),
            ),
          ),
          const SizedBox(height: 16),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(width: 24),
                CityCard(
                    city: City(
                        id: 0,
                        name: 'Jakarta',
                        imageUrl: 'assets/images/img-popular-1.png')),
                const SizedBox(width: 20),
                CityCard(
                    city: City(
                        id: 1,
                        name: 'Bandung',
                        imageUrl: 'assets/images/img-popular-2.png',
                        isPopular: true)),
                const SizedBox(width: 20),
                CityCard(
                    city: City(
                        id: 0,
                        name: 'Surabaya',
                        imageUrl: 'assets/images/img-popular-3.png')),
                const SizedBox(width: 20),
                const SizedBox(width: 24),
              ],
            ),
          )
        ],
      )),
    );
  }
}
