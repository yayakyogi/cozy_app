import 'package:cozy_app/model/city.dart';
import 'package:cozy_app/model/guidance.dart';
import 'package:cozy_app/model/recomended.dart';
import 'package:cozy_app/theme.dart';
import 'package:cozy_app/widget/city_card.dart';
import 'package:cozy_app/widget/guidance_card.dart';
import 'package:cozy_app/widget/recomended_card.dart';
import 'package:cozy_app/widget/section_label.dart';
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

          // * Popular Cities
          const SectionLabel(title: 'Popular Cities'),
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
          ),
          const SizedBox(height: 30),

          // * Recomended Space
          const SectionLabel(title: 'Recomended Space'),
          const SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RecomendedCard(
                  recomended: Recomended(
                      id: 1,
                      price: 52,
                      rate: 4,
                      name: 'Kuretakeso Hott',
                      city: 'Bogor',
                      country: 'Indonesia',
                      imageUrl: 'assets/images/img-popular-3.png'),
                ),
                RecomendedCard(
                  recomended: Recomended(
                      id: 2,
                      price: 40,
                      rate: 3,
                      name: 'Roemah Nenek',
                      city: 'Bandung',
                      country: 'Indonesia',
                      imageUrl: 'assets/images/img-popular-4.png'),
                ),
                RecomendedCard(
                  recomended: Recomended(
                      id: 3,
                      price: 30,
                      rate: 4,
                      name: 'Darrling How',
                      city: 'Jakarta',
                      country: 'Indonesia',
                      imageUrl: 'assets/images/img-popular-5.png'),
                ),
              ],
            ),
          ),

          // * Tips & Guidance
          const SectionLabel(title: 'Tips & Guidance'),
          const SizedBox(height: 16),
          GuidanceCard(
              guidance: Guidance(
                  id: 1,
                  name: 'City Guidlines',
                  imageUrl: 'assets/icons/ic_guidlines.png',
                  datetime: '20 Apr')),
          GuidanceCard(
              guidance: Guidance(
                  id: 2,
                  name: 'Jakarta Fairship',
                  imageUrl: 'assets/icons/ic_jakarta_fairship.png',
                  datetime: '11 Dec')),
          const SizedBox(height: 30)
        ],
      )),
    );
  }
}
