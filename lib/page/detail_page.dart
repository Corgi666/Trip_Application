// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:travelapp/appconst/colors.dart';
import 'package:travelapp/widget/large_text.dart';
import 'package:travelapp/widget/small_text.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isSelectd = 0.obs;
    // List num = [1,2,3,4,5];
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                child: Container(
              width: double.maxFinite,
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/img/mountain.jpeg'),
                      fit: BoxFit.cover)),
            )),
            Positioned(
                left: 20,
                top: 70,
                child: Row(
                  children: [
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                    )
                  ],
                )),
            Positioned(
                top: 280,
                child: Container(
                  padding: EdgeInsets.only(top: 30, right: 20, left: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 700,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          large_text(
                            text: 'Yosemite',
                            color: Colors.black54,
                          ),
                          large_text(
                            text: '\$ 250',
                            color: AppColors.mainColor,
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(Icons.location_on, color: AppColors.mainColor),
                          small_text(
                            text: 'USA, California',
                            color: AppColors.mainColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Wrap(
                            children: [
                              for (int i = 0; i < 5; i++)
                                Icon(
                                  Icons.star,
                                  color: AppColors.starColor,
                                ),
                              SizedBox(
                                width: 10,
                              ),
                              small_text(
                                text: '(5.0)',
                                color: AppColors.textColor2,
                                fontWeight: FontWeight.w600,
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      large_text(
                        text: 'People',
                      ),
                      SizedBox(height: 10),
                      small_text(
                          text: 'Number of people in your group',
                          fontWeight: FontWeight.w400),
                      Obx(() => Wrap(
                            children: [
                              for (int i = 0; i < 5; i++)
                                GestureDetector(
                                  onTap: () => isSelectd.value = i,
                                  child: isSelectd.value == i
                                      ? Container(
                                          width: 50,
                                          height: 50,
                                          // padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          margin: EdgeInsets.only(right: 10),
                                          child: Center(
                                            child: Text(
                                              (i+1).toString(),
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  color: Colors.white),
                                            ),
                                          ))
                                      : Container(
                                          width: 50,
                                          height: 50,
                                          // padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              color: AppColors.buttonBackground,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          margin: EdgeInsets.only(right: 10),
                                          child: Center(
                                            child: Text(
                                              (i+1).toString(),
                                              style: TextStyle(fontSize: 25),
                                            ),
                                          )),
                                )
                            ],
                          ))
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
