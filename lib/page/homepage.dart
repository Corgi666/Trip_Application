// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travelapp/appconst/colors.dart';
import 'package:travelapp/widget/large_text.dart';
import 'package:travelapp/widget/small_text.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});
  @override
  State<homepage> createState() => _MyTabbedPageState();
}

class _MyTabbedPageState extends State<homepage>
    with SingleTickerProviderStateMixin {
  // static const List<Tab> myTabs = <Tab>[
  //   Tab(text: 'LEFT'),
  //   Tab(text: 'RIGHT'),
  // ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List images = [
    'balloning.png',
    'hiking.png',
    'kayaking.png',
    'snorkling.png'
  ];
  List keys = ['Balloning', 'Hiking', 'Kayaking', 'Snorkling'];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 70,
        left: 20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,
                  size: 30,
                  color: Colors.black54,
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.5),
                      image: const DecorationImage(
                          image: AssetImage('assets/img/kishibe.png'),
                          fit: BoxFit.fill)),
                )
              ],
            ),
          ),
          const SizedBox(height: 40),
          const large_text(text: 'Discover'),
          const SizedBox(height: 40),
          Container(
              child: TabBar(
                  // labelPadding: EdgeInsets.only(left: 0, right: 0),
                  controller: _tabController,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                Text('Places'),
                Text('Inspiration'),
                Text('Emotions')
              ])),
          SizedBox(height: 40),
          Container(
            height: 300,
            width: double.maxFinite,
            child: TabBarView(controller: _tabController, children: [
              ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 200,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage('assets/img/mountain.jpeg'),
                              fit: BoxFit.cover),
                          color: Colors.white),
                      child: Center(),
                    );
                  }),
              Text('data'),
              Text('data')
            ]),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                large_text(text: 'Explore more'),
                Text(
                  'See all',
                  style: TextStyle(
                      color: AppColors.mainColor, fontWeight: FontWeight.w300),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: double.maxFinite,
            height: 120,
            margin: EdgeInsets.only(left: 20),
            child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          // margin: EdgeInsets.only(left: 50),
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/img/' + images[index]),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                            child: small_text(
                          text: keys[index].toString(),
                          fontWeight: FontWeight.w400,
                        ))
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
