import 'package:clone_tiki/constants/dimension.dart';
import 'package:flutter/material.dart';

class SliverSearchBar extends StatelessWidget {
  const SliverSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 0,
      pinned: true,
      expandedHeight: height(context, 100),
      toolbarHeight: height(context, 50),
      collapsedHeight: height(context, 50),
      title:
      SizedBox(height: height(context, 25), child: Image.asset('assets/logo.png')),
      centerTitle: true,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: const EdgeInsets.all(10),
        expandedTitleScale: 1.3,
        collapseMode: CollapseMode.pin,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      width: width(context, 295),
                      height: height(context, 30),
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
                    ),
                  )
                ],
              ),
            ),
          ],
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
    );
  }
}
