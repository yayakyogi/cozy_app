import 'package:cozy_app/model/city.dart';
import 'package:cozy_app/model/guidance.dart';
import 'package:cozy_app/model/recommended.dart';
import 'package:cozy_app/provider/recommended_provider.dart';
import 'package:cozy_app/theme.dart';
import 'package:cozy_app/widget/bottom_navbar.dart';
import 'package:cozy_app/widget/city_card.dart';
import 'package:cozy_app/widget/guidance_card.dart';
import 'package:cozy_app/widget/recommended_card.dart';
import 'package:cozy_app/widget/section_label.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var recommendedProvider = Provider.of<RecommendedProvider>(context);

    return Scaffold(
      floatingActionButton: Container(
        height: 60,
        margin: const EdgeInsets.symmetric(horizontal: 24),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
            color: grayColor, borderRadius: BorderRadius.circular(23)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            BottomNavbar(
                imageUrl: 'assets/icons/ic_home_on.png', isActive: true),
            BottomNavbar(
                imageUrl: 'assets/icons/ic_mail_off.png', isActive: false),
            BottomNavbar(
                imageUrl: 'assets/icons/ic_card_off.png', isActive: false),
            BottomNavbar(
                imageUrl: 'assets/icons/ic_love_off.png', isActive: false),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: FutureBuilder(
              future: recommendedProvider.getRecommendedSpace(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<Recommended> data = snapshot.data as List<Recommended>;
                  return Column(
                    children: data.map((item) {
                      return Container(
                        child: RecommendedCard(item),
                      );
                    }).toList(),
                  );
                }
                return const Center(child: CircularProgressIndicator());
              },
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
          const SizedBox(height: 70)
        ],
      )),
    );
  }
}
