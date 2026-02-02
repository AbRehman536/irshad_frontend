import 'package:flutter/material.dart';
import 'package:irshad_frontend/models/onBoarding.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({super.key});

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  PageController pageController = PageController();
  List<OnBoarding> onBoardingList = [
    OnBoarding(image: 'assets/images/first.png', title: 'Select Items'),
    OnBoarding(image: 'assets/images/second.png', title: 'Add to Cart'),
    OnBoarding(image: 'assets/images/third.png', title: 'Locate Yourself'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.yellow,
                child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: pageController,
                  itemCount: onBoardingList.length,
                  itemBuilder: (BuildContext context, int index) {
                  return Column(children: [
                    Image.asset(onBoardingList[index].image.toString()),
                    Text(onBoardingList[index].title.toString()),
                  ],);
                },),
              ),
            ),
            SmoothPageIndicator(
                controller: pageController,  // PageController
                count:  onBoardingList.length,
                effect:  WormEffect(),  // your preferred effect
                onDotClicked: (index){}
            ),
            ElevatedButton(onPressed: (){}, child: Text("Next"))
          ],
        ),
      ),
    );
  }
}
