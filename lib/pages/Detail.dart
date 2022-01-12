import 'package:cozy_app/model/recommended.dart';
import 'package:cozy_app/theme.dart';
import 'package:cozy_app/widget/facilities.dart';
import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  final Recommended recommended;
  const Detail(this.recommended, {Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          // * Image
          Container(
            width: double.infinity,
            child: Image.network(
              widget.recommended.imageUrl,
              height: 330,
              fit: BoxFit.fill,
            ),
          ),

          // * Detail
          Container(
            child: ListView(
              children: [
                const SizedBox(height: 300),
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
                                  widget.recommended.name,
                                  style: fw_500.copyWith(
                                      color: blackColor, fontSize: 22),
                                ),
                                const SizedBox(height: 2),
                                // * Price
                                RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: '\$ ${widget.recommended.price}',
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
                                Facilities(
                                    title: 'Kitchen',
                                    icons: 'assets/icons/ic_kitchen.png',
                                    total: widget.recommended.numberOfKitchens
                                        .toString()),
                                Facilities(
                                    title: 'Bedroom',
                                    icons: 'assets/icons/ic_bedroom.png',
                                    total: widget.recommended.numberOfBedrooms
                                        .toString()),
                                Facilities(
                                    title: 'Big Lemari',
                                    icons: 'assets/icons/ic_big_lemari.png',
                                    total: widget.recommended.numberOfCupBoards
                                        .toString()),
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),

                      // * Photos
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
                            children: widget.recommended.photos!.map((item) {
                              return Container(
                                margin: const EdgeInsets.only(left: 18),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.network(
                                    item,
                                    width: 110,
                                    height: 88,
                                  ),
                                ),
                              );
                            }).toList()),
                      ),
                      const SizedBox(height: 30),

                      // * Location
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
                                    widget.recommended.address,
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

                      // * Button
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
                  Navigator.pop(context);
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
