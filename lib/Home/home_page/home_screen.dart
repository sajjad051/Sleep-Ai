import 'package:ai_sleep/Home/Widget/custom_bottom_buttom.dart';
import 'package:ai_sleep/Home/home_page/home_slider.dart';
import 'package:ai_sleep/widget/Recommended_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Widget/customHomeCard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> gridItems = [
      {
        'title': "Ghosts and Empties",
        'subtitle': "By Lauren Groff",
        'image': "assets/sleep/test.jpg",
      },
      {
        'title': "Ghosts and Empties",
        'subtitle': "By Lauren Groff",
        'image': "assets/auth_img/sign_in.jpg",
      },
      {
        'title': "Ghosts and Empties",
        'subtitle': "By Lauren Groff",
        'image': "assets/auth_img/sign_in.jpg",
      },
      {
        'title': "Ghosts and Empties",
        'subtitle': "By Lauren Groff",
        'image': "assets/auth_img/sign_in.jpg",
      },
      {
        'title': "Ghosts and Empties",
        'subtitle': "By Lauren Groff",
        'image': "assets/auth_img/sign_in.jpg",
      },
      // Add more items as needed
    ];

    return Scaffold(
      backgroundColor: Color(0xFF020825),
      body: Stack(
        children: [
          // Image at the top
          Positioned(
            top: 0, // Position at the top
            left: 0,
            right: 0,
            child: SizedBox(
              height: Get.height * .28,
              width: Get.width,
              child: Image.asset(
                "assets/sleep/home_cover.jpg",
                fit: BoxFit.cover, // Ensures the image covers the width
              ),
            ),
          ),



          ListView(
            children: [

           //   HomeSlider(),
              Padding(
                padding: EdgeInsets.only(
                    top: Get.height * .13, left: 24, right: 24),
                child: Column(
                  children: [
                    HomeSlider(),
                    SizedBox(height: 15,),


                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Bedtime Stories",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color(0xFFFFFFFF).withOpacity(.8),
                          ),
                        ),
                        Text(
                          "See All",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Color(0xFFFFFFFF).withOpacity(.8),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: Get.height * 0.28,
                      // Adjust the height as needed
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal, // Horizontal scrolling
                        itemCount: gridItems.length,
                        padding: EdgeInsets.only(top: 5),
                        itemBuilder: (context, index) {
                          final item = gridItems[index];
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 3), // Equivalent to crossAxisSpacing
                            width: Get.width * 0.38, // Adjust the width of each item if needed
                            child: Customhomecard(
                              title: item['title']!,
                              subtitle: item['subtitle']!,
                              image: item['image']!,
                            ),
                          );
                        },
                      ),
                    ),


                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Freatred",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color(0xFFFFFFFF).withOpacity(.8),
                          ),
                        ),
                        Text(
                          "See All",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Color(0xFFFFFFFF).withOpacity(.8),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: Get.height * 0.28,
                      // Adjust the height as needed
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal, // Horizontal scrolling
                        itemCount: gridItems.length,
                        padding: EdgeInsets.only(top: 5),
                        itemBuilder: (context, index) {
                          final item = gridItems[index];
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 3), // Equivalent to crossAxisSpacing
                            width: Get.width * 0.38, // Adjust the width of each item if needed
                            child: Customhomecard(
                              title: item['title']!,
                              subtitle: item['subtitle']!,
                              image: item['image']!,
                            ),
                          );
                        },
                      ),
                    ),


                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recommended",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color(0xFFFFFFFF).withOpacity(.8),
                          ),
                        ),
                        Text(
                          "See All",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Color(0xFFFFFFFF).withOpacity(.8),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: Get.height * 0.30,
                      //width: Get.width * .25,
                      // Adjust the height as needed
                      child: GridView.builder(
                        scrollDirection: Axis.horizontal, // Horizontal scrolling
                        itemCount: gridItems.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1, // One item per row, adjust if needed
                          crossAxisSpacing: 0,
                          mainAxisSpacing: 0,
                          childAspectRatio: 7/8.7,
                        ),
                        padding: EdgeInsets.only(top: 5),
                        itemBuilder: (context, index) {
                          final item = gridItems[index];
                          return Recommendedcard(
                            title: item['title']!,
                            subtitle: item['subtitle']!,
                            image: item['image']!,
                          );
                        },
                      ),
                    ),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Mental Fitness",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color(0xFFFFFFFF).withOpacity(.8),
                          ),
                        ),
                        Text(
                          "See All",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Color(0xFFFFFFFF).withOpacity(.8),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: Get.height * 0.30,
                      //width: Get.width * .25,
                      // Adjust the height as needed
                      child: GridView.builder(
                        scrollDirection: Axis.horizontal, // Horizontal scrolling
                        itemCount: gridItems.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1, // One item per row, adjust if needed
                          crossAxisSpacing: 0,
                          mainAxisSpacing: 0,
                          childAspectRatio: 7/8.7,
                        ),
                        padding: EdgeInsets.only(top: 5),
                        itemBuilder: (context, index) {
                          final item = gridItems[index];
                          return Recommendedcard(
                            title: item['title']!,
                            subtitle: item['subtitle']!,
                            image: item['image']!,
                          );
                        },
                      ),
                    ),


                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Mental Fitness",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color(0xFFFFFFFF).withOpacity(.8),
                          ),
                        ),
                        Text(
                          "See All",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Color(0xFFFFFFFF).withOpacity(.8),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: Get.height * 0.28,
                      //width: Get.width * .25,
                      // Adjust the height as needed
                      child: GridView.builder(
                        scrollDirection: Axis.horizontal, // Horizontal scrolling
                        itemCount: gridItems.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1, // One item per row, adjust if needed
                          crossAxisSpacing: 3,
                          mainAxisSpacing: 0,
                          childAspectRatio: 3/2.4,
                        ),
                        padding: EdgeInsets.only(top: 5),
                        itemBuilder: (context, index) {
                          final item = gridItems[index];
                          return Customhomecard(
                            title: item['title']!,
                            subtitle: item['subtitle']!,
                            image: item['image']!,
                          );
                        },
                      ),
                    ),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Mental Fitness",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color(0xFFFFFFFF).withOpacity(.8),
                          ),
                        ),
                        Text(
                          "See All",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Color(0xFFFFFFFF).withOpacity(.8),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: Get.height * 0.28,
                      //width: Get.width * .25,
                      // Adjust the height as needed
                      child: GridView.builder(
                        scrollDirection: Axis.horizontal, // Horizontal scrolling
                        itemCount: gridItems.length,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1, // One item per row, adjust if needed
                          crossAxisSpacing: 3,
                          mainAxisSpacing: 0,
                          childAspectRatio: 3/2.4,
                        ),
                        padding: EdgeInsets.only(top: 5),
                        itemBuilder: (context, index) {
                          final item = gridItems[index];
                          return Customhomecard(
                            title: item['title']!,
                            subtitle: item['subtitle']!,
                            image: item['image']!,
                          );
                        },
                      ),
                    ),

                    SizedBox(height: 15),

                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: CustomBottomButtom(),
          ),


        ],
      ),
    );
  }
}
