import 'package:flutter/material.dart';

import '../../constants/dimension.dart';
import '../../constants/page_view_list.dart';

class SliverListview extends StatefulWidget {
  SliverListview({Key? key, required this.currentIndex}) : super(key: key);

  int currentIndex;

  @override
  State<SliverListview> createState() => _SliverListviewState();
}

class _SliverListviewState extends State<SliverListview> {

  @override
  initState() {
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
            backgroundColor: Colors.grey,
            collapsedHeight: height(context, 60),
            toolbarHeight: 0,
            stretch: false,
            pinned: true,
            flexibleSpace: Container(
              color: Colors.grey,
              width: getWidth(context),
              child: ListView.builder(
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, int index)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: InkWell(
                        onTap: () {
                          widget.currentIndex = index;
                          print(1);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              border: widget.currentIndex == index ? Border.all(
                                width:  1,
                                color: Colors.blue,
                              ) : const Border()
                          ),
                          width: width(context, 85),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: height(context, 5),
                              ),
                              Expanded(child: Image.asset(images[index][0])),
                              SizedBox(
                                height: height(context, 5),
                              ),
                              Expanded(child: Text(images[index][1], textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: widget.currentIndex == index ? Colors.blue : Colors.black,
                                ),
                              )),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
    );
  }
}
