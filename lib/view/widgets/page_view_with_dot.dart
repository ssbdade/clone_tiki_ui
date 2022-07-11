import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PageViewWithDot extends StatefulWidget {
  const PageViewWithDot(
      {Key? key,
      required this.list,
      required this.pageHeight,
      required this.initialPage})
      : super(key: key);
  final List<String> list;
  final double pageHeight;
  final int initialPage;

  @override
  State<PageViewWithDot> createState() => _PageViewWithDotState();
}

class _PageViewWithDotState extends State<PageViewWithDot> {
  double currentIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.pageHeight,
      child: Stack(children: [
        SizedBox(
          height: widget.pageHeight,
          child: CarouselSlider.builder(
              itemCount: widget.list.length,
              itemBuilder: (context, int index, realIdx) {
                final urlImage = widget.list[index];
                return buildImage(urlImage, index);
              },
              options: CarouselOptions(
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index.toDouble();
                  });
                },
                viewportFraction: 1,
                height: widget.pageHeight,
                autoPlay: true,
              )),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
                widget.list.length,
                (index) => Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: DotIndex(
                        isHighLight:
                            index == currentIndex % widget.list.length))),
          ),
        )
      ]),
    );
  }
}

class DotIndex extends StatelessWidget {
  const DotIndex({Key? key, required this.isHighLight}) : super(key: key);
  final bool isHighLight;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      height: 2,
      width: 5,
      color: isHighLight ? Colors.white : Colors.black,
    );
  }
}


Widget buildImage(String urlImage, int index) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image.network(
        urlImage,
        fit: BoxFit.fill,
        width: 800,
      ),
    ),
  );
}
