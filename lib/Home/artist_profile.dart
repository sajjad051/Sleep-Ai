import 'package:ai_sleep/Home/Widget/custom_UnLock_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//import '../widget/customHomeCard.dart';
import 'Widget/customHomeCard.dart';

class ArtistProfile extends StatelessWidget {
  const ArtistProfile({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Map<String, String>> gridItems = [
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
      backgroundColor: Colors.purple.shade800,
      body: Stack(
        children: [
          SizedBox(
            height: Get.height,
            width: Get.width,
            child: Image.asset(
              'assets/sleep/artist_img.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back, color: Colors.white)),
                    Text(
                      'Lauren Groff',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.favorite_border, color: Colors.white),
                  ],
                ),
              ),
              SizedBox(height: Get.height * 0.25),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF020825),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lauren Groff',
                        style: TextStyle(
                            color: Color(0xFFFFFFFF).withOpacity(.9),
                            fontSize: 22),
                      ),
                      Text(
                        'Musician',
                        style:
                            TextStyle(color: Color(0xFF848BBD), fontSize: 14),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit...',
                        style:
                            TextStyle(color: Color(0xFFA2A5B1), fontSize: 14),
                      ),
                      SizedBox(height: 10),
                  Expanded(
                    child: GridView.builder(
                      itemCount: gridItems.length,
                      gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 20,
                      ),
                      padding: EdgeInsets.only(top: 10, bottom: 20),
                      itemBuilder: (context, index) {
                        final item = gridItems[index];
                        return CustomUnlockCard(
                          title: item['title']!,
                          subtitle: item['subtitle']!,
                          image: item['image']!,

                        );
                      },
                    ),
                  )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
