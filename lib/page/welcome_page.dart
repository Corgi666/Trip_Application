import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelapp/appconst/colors.dart';
import 'package:travelapp/page/main_page.dart';
import 'package:travelapp/widget/large_text.dart';
import 'package:travelapp/widget/response_button.dart';
import 'package:travelapp/widget/small_text.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = ['welcome-one.png', 'welcome-two.png', 'welcome-three.png'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Container(
            height: double.maxFinite,
            width: double.maxFinite,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/img/' + images[index]),
                    fit: BoxFit.cover)),
            child: Container(
              margin: EdgeInsets.only(top: 150, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      large_text(text: 'Tips'),
                      small_text(
                        text: 'Moutain',
                        size: 30,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 250,
                        child: small_text(
                          text:
                              'Mountain hikes give you and incresdible sense of freedom along with endruance text',
                          fontWeight: FontWeight.normal,
                          color: AppColors.textColor2,
                          size: 14,
                        ),
                      ),
                      const SizedBox(height: 60),
                      GestureDetector( onTap: () {
                        Get.to(()=>MainPage());
                      }, child: response_button(width: 150))
                    ],
                  ),
                  Column(
                      children: List.generate(3, (indexDots) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 2),
                      decoration: BoxDecoration(
                          color: index == indexDots
                              ? AppColors.mainColor
                              : AppColors.mainColor.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(8)),
                      width: 8,
                      height: index == indexDots ? 25 : 8,
                    );
                  }))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
