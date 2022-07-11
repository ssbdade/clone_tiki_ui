import 'package:flutter/material.dart';

class PageviewGallery extends StatefulWidget {
  @override
  _PageviewGalleryState createState() => _PageviewGalleryState();
}

class _PageviewGalleryState extends State<PageviewGallery> {
  final PageController ctrl = PageController(
    viewportFraction: 0.2,
  );
  final totalAvailableSpacing = 90.0;

  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: PageView.builder(
              controller: ctrl,
              itemCount: 8,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, int index) {
                // Active page
                bool active = index == currentPage;
                final double innerPadding = active ? 0 : totalAvailableSpacing;
                return Padding(
                    padding: EdgeInsets.symmetric(horizontal: innerPadding / 2),
                    child: _buildStoryPage(active, innerPadding));
              }),
        );
  }

  @override
  void initState() {
    super.initState();
    ctrl.addListener(() {
      int pos = ctrl.page!.round();
      if (currentPage != pos) {
        {
          setState(() {
            currentPage = pos;
          });
        }
      }
    });
  }

  _buildStoryPage(bool active, double padding) {
    // Animated Properties
    final double blur = active ? 30 : 0;
    final double top = active ? 100 : 200;

    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeOutQuint,
      margin: EdgeInsets.only(top: top, bottom: 50),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.red,
          boxShadow: active
              ? [
            BoxShadow(
              color: Colors.black87,
              blurRadius: blur,
            )
          ]
              : null),
    );
  }
}