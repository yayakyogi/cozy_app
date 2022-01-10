import 'package:cozy_app/theme.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          // * Image
          Container(
            width: double.infinity,
            child: Image.asset(
              'assets/images/img-popular-3.png',
              fit: BoxFit.fill,
            ),
          ),
          // * Detail
          Container(
            child: ListView(
              children: [
                const SizedBox(height: 330),
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: whiteColor,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(32))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 30),
                      // * Title and rating
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // * Title
                                Text(
                                  'Kuretakeso Hott',
                                  style: fw_500.copyWith(
                                      color: blackColor, fontSize: 22),
                                ),
                                const SizedBox(height: 2),
                                // * Price
                                RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: '\$52',
                                        style: fw_500.copyWith(
                                            color: purpleColor, fontSize: 16)),
                                    TextSpan(
                                        text: ' / month',
                                        style: fw_300.copyWith(
                                            color: greyColor, fontSize: 16)),
                                  ]),
                                ),
                              ],
                            ),
                            // * Rating
                            Row(
                              children: const [
                                Icon(Icons.star, color: orangeColor),
                                Icon(Icons.star, color: orangeColor),
                                Icon(Icons.star, color: orangeColor),
                                Icon(Icons.star, color: orangeColor),
                                Icon(Icons.star, color: greyColor),
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      // * Main Facilities
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Main Facilities',
                              style: fw_400.copyWith(
                                  color: blackColor, fontSize: 16),
                            ),
                            const SizedBox(height: 12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // * Kitchen
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset('assets/icons/ic_kitchen.png',
                                        width: 32),
                                    const SizedBox(height: 8),
                                    RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: '2',
                                            style: fw_500.copyWith(
                                                color: purpleColor)),
                                        TextSpan(
                                            text: ' Kitchen',
                                            style: fw_300.copyWith(
                                                color: greyColor)),
                                      ]),
                                    ),
                                  ],
                                ),
                                // * Bedroom
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset('assets/icons/ic_bedroom.png',
                                        width: 32),
                                    const SizedBox(height: 8),
                                    RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: '3',
                                            style: fw_500.copyWith(
                                                color: purpleColor)),
                                        TextSpan(
                                            text: ' Bedroom',
                                            style: fw_300.copyWith(
                                                color: greyColor)),
                                      ]),
                                    ),
                                  ],
                                ),
                                // * Big Lemari
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                        'assets/icons/ic_big_lemari.png',
                                        width: 32),
                                    const SizedBox(height: 8),
                                    RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: '3',
                                            style: fw_500.copyWith(
                                                color: purpleColor)),
                                        TextSpan(
                                            text: ' Big Lemari',
                                            style: fw_300.copyWith(
                                                color: greyColor)),
                                      ]),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Text(
                          'Photos',
                          style: fw_400.copyWith(fontSize: 16),
                        ),
                      ),
                      const SizedBox(height: 11),
                      Container(
                        height: 88,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            const SizedBox(width: 24),
                            // * Image 1
                            Container(
                              margin: const EdgeInsets.only(right: 18),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.asset(
                                  'assets/images/img-popular-1.png',
                                  width: 110,
                                  height: 88,
                                ),
                              ),
                            ),
                            // * Image 2
                            Container(
                              margin: const EdgeInsets.only(right: 18),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.asset(
                                  'assets/images/img-popular-2.png',
                                  width: 110,
                                  height: 88,
                                ),
                              ),
                            ),
                            // * Image 3
                            Container(
                              margin: const EdgeInsets.only(right: 18),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.asset(
                                  'assets/images/img-popular-3.png',
                                  width: 110,
                                  height: 88,
                                ),
                              ),
                            ),
                            const SizedBox(width: 24)
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Location',
                                  style: fw_400.copyWith(
                                      color: blackColor, fontSize: 16),
                                ),
                                const SizedBox(height: 6),
                                SizedBox(
                                  width: 213,
                                  child: Text(
                                    'Jln. Kappan Sukses No. 20 Palembang',
                                    style: fw_400.copyWith(color: greyColor),
                                  ),
                                )
                              ],
                            ),
                            Image.asset(
                              'assets/icons/ic_location.png',
                              width: 40,
                              height: 40,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 40),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                              color: purpleColor,
                              borderRadius: BorderRadius.circular(17)),
                          child: Center(
                              child: Text(
                            'Book Now',
                            style: fw_500.copyWith(
                                color: whiteColor, fontSize: 18),
                          )),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              top: 30,
              left: 24,
              child: InkWell(
                onTap: () {
                  print('Back');
                },
                child: Image.asset(
                  'assets/icons/ic_arrow_back.png',
                  width: 40,
                ),
              )),
          Positioned(
              top: 30,
              right: 24,
              child: InkWell(
                onTap: () {
                  print('Favorite');
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                    child: Icon(Icons.favorite_outline),
                  ),
                ),
              )),
        ],
      )),
    );
  }
}
