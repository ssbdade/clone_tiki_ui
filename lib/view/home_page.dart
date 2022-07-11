import 'package:clone_tiki/constants/page_view_list.dart';
import 'package:clone_tiki/view/widgets/app_list_view.dart';
import 'package:clone_tiki/view/widgets/home_stack.dart';
import 'package:clone_tiki/view/widgets/page_view_with_dot.dart';
import 'package:clone_tiki/view/widgets/pageview_listview.dart';
import 'package:clone_tiki/view/widgets/sliver_appbar.dart';
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
            const SliverAppbar(),
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
                  height: 400,
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(
                          height: 30,
                          child: Row(
                            children: const [
                              SizedBox(width: 10,),
                              Text("Thuong hieu chinh hang",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(width: 135,),
                              Text("XEM THEM"),
                            ],
                          )
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      PageViewBorder(),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        height: 200,
                        width: 125,
                      )
                    ],

                  ),
                )
               ]
              ),
            ),
          ],
        ));
  }
}



