import 'package:clone_tiki/constants/page_view_list.dart';
import 'package:flutter/material.dart';

class HomeStack extends StatefulWidget {
  const HomeStack({Key? key}) : super(key: key);

  @override
  State<HomeStack> createState() => _HomeStackState();
}

class _HomeStackState extends State<HomeStack> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 120,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 90,
                  child: ListView.builder(itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        const SizedBox(width: 25,),
                        SizedBox(
                          width: 45,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 45,
                                width: 45,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset('assets/icon.png'),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text("Title $index"),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                      ],
                    );
                  },
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
              height: 100,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 70,
                    width: 90,
                    child: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.asset(banners[0])),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 100,
                    width: 150,
                    child: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.asset(banners[1])),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 70,
                    width: 90,
                    child: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.asset(banners[2])),
                  ),
                ],
              )
          ),
        ),
      ]),
    );
  }
}
