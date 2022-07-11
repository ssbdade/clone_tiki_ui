import 'package:carousel_slider/carousel_slider.dart';
import 'package:clone_tiki/constants/page_view_list.dart';
import 'package:clone_tiki/view/widgets/app_list_view.dart';
import 'package:clone_tiki/view/widgets/home_stack.dart';
import 'package:clone_tiki/view/widgets/page_view_with_dot.dart';
import 'package:clone_tiki/view/widgets/pageview_gallery.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pageViewController = PageController();
  double currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              elevation: 0,
              pinned: true,
              expandedHeight: 100,
              toolbarHeight: 50,
              collapsedHeight: 50,
              title:
                  SizedBox(height: 25, child: Image.asset('assets/logo.png')),
              centerTitle: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Container(
                        width: 220,
                        height: 25,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child: Icon(
                                Icons.search_outlined,
                                color: Colors.black38,
                              ),
                            ),
                            Text(
                              'Ban tim gi hom nay?',
                              style: TextStyle(
                                color: Colors.black38,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                centerTitle: true,
              ),
              actions: const [
                Icon(Icons.notifications_none_outlined),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Icon(Icons.shopping_cart_outlined),
                ),
              ],
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 10,
                        height: 40,
                      ),
                      SizedBox(
                        height: 40,
                        width: 320,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (BuildContext context, int index) {
                              return const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text('Bach hoa'),
                              );
                            }),
                      ),
                      const VerticalDivider(
                        color: Colors.black,
                        width: 10,
                        thickness: 1,
                      ),
                      const Icon(Icons.menu_sharp)
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                PageViewWithDot(list: list1, initialPage: 20, pageHeight: 125),
                const SizedBox(
                  height: 10,
                ),
                PageViewWithDot(
                    list: list2,
                    initialPage: list2.length * 10,
                    pageHeight: 225),
                const SizedBox(
                  height: 10,
                ),
                const HomeStack(),
                Container(
                  height: 10,
                  color: Colors.grey,
                ),
                const AppListView(),
                Container(
                  height: 10,
                  color: Colors.grey,
                ),
                Container(
                  color: Colors.white,
                    child: CarouselSlider.builder(itemCount: 4, itemBuilder: (context, index, realIdx) {
                      final urlImage = imgList[index];
                      return buildImage(urlImage, index);
                    }, options: CarouselOptions(
                      height: 400,
                      autoPlay: true,
                      enlargeCenterPage: true,
                    )),
                )]),
            ),
          ],
        ));
  }
}


Widget buildImage(String urlImage, int index) {
  return Container(
    color: Colors.grey,
    child: Center(
      child: Image.network(
        urlImage,
        fit: BoxFit.cover,
        width: 1000,
      ),
    ),
  );
}

