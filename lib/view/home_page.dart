import 'package:clone_tiki/constants/page_view_list.dart';
import 'package:clone_tiki/view/widgets/app_list_view.dart';
import 'package:clone_tiki/view/widgets/home_stack.dart';
import 'package:clone_tiki/view/widgets/page_view_with_dot.dart';
import 'package:clone_tiki/view/widgets/pageview_listview.dart';
import 'package:clone_tiki/view/widgets/sliver_appbar.dart';
import 'package:flutter/material.dart';

import '../constants/dimension.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pageViewController = PageController();
  double currentIndex = 0;


  @override
  initState() {
    super.initState();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: CustomScrollView(
          slivers: [
            const SliverSearchBar(),
            SliverList(
              delegate: SliverChildListDelegate([
                IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: height(context, 40),
                        width: width(context, 370),
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
                      VerticalDivider(
                        color: Colors.black,
                        width: width(context, 10),
                        thickness: 1,
                      ),
                      const Icon(Icons.menu_sharp)
                    ],
                  ),
                ),
                SizedBox(
                  height: height(context, 10),
                ),
                PageViewWithDot(list: list1, initialPage: 20, pageHeight: height(context, 125)),
                SizedBox(
                  height: height(context, 10),
                ),
                PageViewWithDot(
                    list: list2,
                    initialPage: list2.length * 10,
                    pageHeight: height(context, 225)),
                SizedBox(
                  height: height(context, 10),
                ),
                const HomeStack(),
                Container(
                  height: height(context, 10),
                  color: Colors.grey,
                ),
                const AppListView(),
                Container(
                  height: height(context, 10),
                  color: Colors.grey,
                ),
                Container(
                  height: height(context, 375),
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(
                          height: height(context, 40),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: width(context, 10), vertical: height(context, 10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text("Thuong hieu chinh hang",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                Text("XEM THEM"),
                              ],
                            ),
                          )
                      ),
                      const PageViewBorder(),
                      SizedBox(
                        height: height(context, 10),
                      ),
                      SizedBox(
                        height: height(context, 200),
                        width: getWidth(context),
                        child: ListView.builder(itemBuilder: (context, int index) {
                          return Padding(
                            padding: EdgeInsets.fromLTRB(width(context, 10), 0, 0, 0),
                            child: Stack(
                              children: [
                                Container(
                                  width: width(context, 150),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 2,
                                      color: const Color(0xfff3f4f6),
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset("assets/brand.webp",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                                 SizedBox(
                                   width: width(context, 150),
                                   child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                        padding: EdgeInsets.symmetric(vertical: height(context, 5)),
                                        child: const Text("Giam 300k",
                                          style: TextStyle(
                                            color: Colors.blue,
                                          ),
                                        ),
                                    ),
                                ),
                                 )
                            ]),
                          );
                        },
                          itemCount: 10,
                          scrollDirection: Axis.horizontal,
                        ),
                      )
                    ],

                  ),
                ),
                Container(
                  height: height(context, 10),
                  color: Colors.grey,
                ),
               ]
              ),
            ),
            SliverAppBar(
              backgroundColor: Colors.grey,
              stretch: false,
              pinned: true,
              actions: [
                Container(
                color: Colors.red,
                height: 300,
                width: getWidth(context),
                child: ListView.builder(
                    itemCount: 20,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, int index)
                    {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 300,
                          width: 100,
                          color: Colors.black,
                        ),
                      );
                    }),
              ),
              ]
            ),
            SliverList(delegate: SliverChildListDelegate(
              [
                Container(
                  height: 800,
                ),
              ]
            ))
          ],
        ));
  }
}



