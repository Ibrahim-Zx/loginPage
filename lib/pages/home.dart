import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_page/pages/discription.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  searchBar() {
    return Container(
      height: 45,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xff002a40),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8)),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.all(8),
          hintText: 'Search',
          hintStyle: const TextStyle(color: Color(0xff0f364b)),
          prefixIcon: const Padding(
            padding: EdgeInsets.all(5),
            child: Image(
              image: AssetImage('assets/images/search.png'),
            ),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(7),
            child: SizedBox(
              width: 50,
              child: SvgPicture.asset('assets/images/mic.svg'),
            ),
          ),
        ),
      ),
    );
  }

  slider() {
    return Container(
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: AnotherCarousel(
        images: const [
          AssetImage('assets/images/first.jpg'),
          AssetImage('assets/images/second.jpg'),
          AssetImage('assets/images/third.jpg'),
          AssetImage('assets/images/fourth.jpg'),
        ],
        boxFit: BoxFit.fill,
        dotSize: 6,
        indicatorBgPadding: 4,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Individual Meeting',
          style: TextStyle(color: Color(0xff0f364b)),
        ),
        elevation: 2,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            searchBar(),
            const SizedBox(height: 30),
            slider(),
            const SizedBox(height: 20),
            const Text(
              'Trending Popular People',
              style: TextStyle(
                  color: Color(0xff0f364b), fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            Container(
              height: 150,
              width: 265,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        padding: const EdgeInsets.only(left: 10),
                        child: Image.asset('assets/images/leaf.png'),
                      ),
                      const SizedBox(width: 8),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text(
                              'Author',
                              style: TextStyle(
                                  color: Color(0xff0f364b),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            '1,028 Meetups',
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Divider(
                      color: Colors.black,
                      thickness: 0.8,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(25),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/profile.jpg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(25),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/profile1.jpeg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(25),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/profile2.jpeg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(25),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/profile2.webp'),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/discriptionPage');
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 10, left: 180),
                      height: 25,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade800,
                          borderRadius: BorderRadius.circular(7)),
                      child: const Center(
                        child: Text(
                          'See More',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
