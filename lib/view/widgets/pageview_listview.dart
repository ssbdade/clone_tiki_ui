import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../constants/page_view_list.dart';

class PageViewBorder extends StatefulWidget {
  const PageViewBorder({Key? key}) : super(key: key);

  @override
  State<PageViewBorder> createState() => _PageViewBorderState();
}

class _PageViewBorderState extends State<PageViewBorder> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Builder(
          builder: (context) {
            return CarouselSlider.builder(itemCount: 4, itemBuilder: (context, index, realIdx) {
              final urlImage = imgList[index];
              return buildImage(urlImage, index, currentPage);
            }, options: CarouselOptions(
              onPageChanged:  (index, reason) {
                setState(() {
                  currentPage = index;
                });
              },
              height: 125,
              autoPlay: true,
              viewportFraction: 0.85,
            ));
          }
      ),
    );
  }
}

Widget buildImage(String urlImage, int index, currentPage) {
  return AnimatedContainer(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
    ),
    curve: Curves.bounceOut,
    duration: const Duration(milliseconds: 350),
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: index != currentPage ? 15:0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(index != currentPage ? 0:10),
        child: Image.network(
          urlImage,
          fit: BoxFit.fill,
          width: 800,
        ),
      ),
    ),
  );
}
