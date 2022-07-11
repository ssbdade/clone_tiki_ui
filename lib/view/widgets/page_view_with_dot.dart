import 'dart:async';

import 'package:flutter/material.dart';

class PageViewWithDot extends StatefulWidget {
  const PageViewWithDot({Key? key, required this.list, required this.pageHeight, required this.initialPage}) : super(key: key);
  final List<String> list;
  final double pageHeight;
  final int initialPage;


  @override
  State<PageViewWithDot> createState() => _PageViewWithDotState();
}

class _PageViewWithDotState extends State<PageViewWithDot> {
  late Timer _timer;
  double currentIndex = 0;
  late PageController pageViewController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      currentIndex++;
      pageViewController.animateToPage(currentIndex.toInt(), duration: Duration(milliseconds: 350), curve: Curves.easeIn);
    });
  }

  @override
  Widget build(BuildContext context) {
    pageViewController = PageController(initialPage: widget.initialPage);
    return SizedBox(
      height: widget.pageHeight,
      child: Stack(
          children: [
            SizedBox(
              height: widget.pageHeight,
              child: PageView.builder(
                  controller: pageViewController,
                  onPageChanged: (page) {
                    setState(() {
                      currentIndex = page.toDouble();
                    });
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 10),
                      child: Card(
                        color: Colors.white10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                            child: Text(widget.list[index % widget.list.length])),
                      ),
                    );
                  }),

            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(
                    widget.list.length,
                        (index) => Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: DotIndex(isHighLight: index == currentIndex % widget.list.length
                        ))),
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
      color: isHighLight ? Colors.blue : Colors.black,
    );
  }
}
