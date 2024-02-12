import 'package:carousel_slider/carousel_slider.dart';
import 'package:dukaan/widgets/carousel_card.dart';
import 'package:dukaan/widgets/divider.dart';
import 'package:dukaan/widgets/overviewcard.dart';
import 'package:dukaan/widgets/visitweb_card.dart';
import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: const Color(0xFF136EB4),
        title: const Text(
          'Homely',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.all(11),
            child: LiteRollingSwitch(
              onSwipe: () {},
              onChanged: (index) {},
              onTap: () {},
              onDoubleTap: () {},
              width: 95,
              value: true,
              textOn: 'Online',
              textOnColor: Colors.black,
              textOff: 'Offline',
              colorOn: Colors.white,
              colorOff: Colors.red,
              iconOn: Icons.circle,
              iconOff: Icons.circle,
              textSize: 12.0,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Stack(alignment: Alignment.topCenter, children: [
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFF136EB4),
              ),
              width: MediaQuery.of(context).size.width,
              height: 60,
            ),
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              width: MediaQuery.of(context).size.width,
              height: 165,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Share Store Link'),
                          Text(
                              'Customers visit the following link and place their orders.')
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'mydukaan.io/homely68',
                            style: TextStyle(
                              color: Colors.red,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.red,
                            ),
                          ),
                          const SizedBox(
                            width: 110,
                          ),
                          ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.chat,
                              size: 18,
                            ),
                            label: const Text(
                              'Share',
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5))),
                              padding:
                                  MaterialStateProperty.all<EdgeInsetsGeometry>(
                                EdgeInsets.zero,
                              ),
                              minimumSize: MaterialStateProperty.all<Size>(
                                const Size(100, 28),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.lightGreenAccent,
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 197, 222, 233),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        alignment: Alignment.center,
                        width: 380,
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Get your own custom domine'),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.arrow_circle_right))
                          ],
                        ),
                      )
                    ]),
              ),
            ),
          ]),
          divider(20),

          const Padding(
            padding: EdgeInsets.only(left: 12),
            child: Text(
              'Get started with Dukkan',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          // const SizedBox(
          //   height: 20,
          // ),
          divider(15),

          CarouselSlider(
            options: CarouselOptions(
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
              height: 250.0,
              enlargeCenterPage: false,
              autoPlay: false,
              // aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: false,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
            items: const [
              CarouselCard(
                color: Colors.blue,
                discrption:
                    'Learn how to start your online store and get your first order!',
                image:
                    'https://metastory.in/wp-content/uploads/2022/12/Dukaan-Startup-Success-Story.jpg',
              ),
              CarouselCard(
                color: Colors.blue,
                discrption:
                    'Learn how to start your online store and get your first order!',
                image:
                    'https://metastory.in/wp-content/uploads/2022/12/Dukaan-Startup-Success-Story.jpg',
              ),
              CarouselCard(
                color: Colors.blue,
                discrption:
                    'Learn how to start your online store and get your first order!',
                image:
                    'https://metastory.in/wp-content/uploads/2022/12/Dukaan-Startup-Success-Story.jpg',
              ),
            ],
          ),

          divider(15),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3,
              (index) {
                //print(currentIndex);
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  width: currentIndex == index ? 20 : 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: currentIndex == index ? Colors.blue : Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                );
              },
            ),
          ),
          divider(10),

          visitWebCard(),

       

          Padding(
            padding: const EdgeInsets.only(left: 12,right: 12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Overview"),
                    TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_drop_down),
                        label: const Text('Lifetime'))
                  ],
                ),
                Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        OverviewCard(
                          titlename: 'ORDERS',
                          value: '0',
                        ),
                        OverviewCard(
                          titlename: 'TOTAL SALES',
                          value: '₹0',
                        ),
                      ],
                    ),
                    divider(10),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        OverviewCard(
                          titlename: 'STORE VIEWS',
                          value: '0',
                        ),
                        OverviewCard(
                          titlename: 'PRODUCT VIEWS',
                          value: '0',
                        ),
                      ],
                    ),
                  ],
                ),

              ],
            ), //column for bellow over view
          ),
          divider(100)
        ],
      ),
    );
  }
}
