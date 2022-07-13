import 'package:clone_tiki/constants/dimension.dart';
import 'package:flutter/material.dart';

class AppListView extends StatefulWidget {
  const AppListView({Key? key,  this.listElementHeight = 80 , this.listElementWidth = 80, this.listHeight = 140,
    this.titleHeight = 40}) : super(key: key);
  final double listElementHeight;
  final double listElementWidth ;
  final double listHeight ;
  final double titleHeight ;



  @override
  State<AppListView> createState() => _AppListViewState();
}

class _AppListViewState extends State<AppListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: widget.titleHeight,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width(context, 15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Gia soc hom nay"),
                  Text("Xem them"),
                ],
              ),
            )
          ),
          SizedBox(
            height: widget.listHeight,
            child: ListView.builder(itemBuilder: (BuildContext context, int index) {
              return Row(
                children: [
                  const SizedBox(width: 25,),
                  SizedBox(
                    width: 80,
                    child: Column(
                      children: [
                        SizedBox(
                          height: widget.listElementHeight,
                          width: widget.listElementWidth,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset('assets/sp.jpg'),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text("800.000"),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text("Sap ban het"),
                        const SizedBox(
                          height: 8,
                        )
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
    );
  }
}
