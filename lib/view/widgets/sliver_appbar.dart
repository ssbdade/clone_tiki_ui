import 'package:flutter/material.dart';

class SliverAppbar extends StatelessWidget {
  const SliverAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
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
    );
  }
}
