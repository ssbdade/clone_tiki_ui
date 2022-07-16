import 'package:clone_tiki/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../constants/page_view_list.dart';

class BodyListView extends StatefulWidget {
  const BodyListView({Key? key}) : super(key: key);


  @override
  State<BodyListView> createState() => _BodyListViewState();
}

class _BodyListViewState extends State<BodyListView> {
  final Controller c = Get.find();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) =>
            Row(
              children: [
                Expanded(child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                        width: 0.5,
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Obx(() => Image.asset(listViewImage[c.currentIndex.value][0])),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.0),
                          child: Text("Công tắc cơ bật tắt đèn tự động",
                            textAlign: TextAlign.left,
                          ),
                        ),
                        const Align(
                          alignment: Alignment.bottomLeft,
                          child: Text("6000 đ",
                            style: TextStyle(
                                fontSize: 18
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )),
                Expanded(child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                        width: 0.5,
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Obx(() => Image.asset(listViewImage[c.currentIndex.value][0])),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.0),
                          child: Text("Công tắc cơ bật tắt đèn tự động",
                            textAlign: TextAlign.left,
                          ),
                        ),
                        const Align(
                          alignment: Alignment.bottomLeft,
                          child: Text("6000 đ",
                            style: TextStyle(
                                fontSize: 18
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )),
              ],
            )
    );
  }
}


