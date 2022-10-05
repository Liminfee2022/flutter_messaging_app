import 'package:flutter/material.dart';
import 'package:flutter_master_class_app/misc/color.dart';
import 'package:flutter_master_class_app/widgets/app_large_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  children: [
                    Icon(Icons.menu, size: 30, color: Colors.black54,),
                    Spacer(),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40,),
              AppLargeText(text: "Discover"),
              SizedBox(height: 30,),
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                    controller: tabController,
                    labelColor: AppColors.mainColor,
                    unselectedLabelColor: Colors.black54.withOpacity(0.3),
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: [
                      Tab(text: "Places",),
                      Tab(text: "Inspiration",),
                      Tab(text: "Emotions",),
                    ],
                  ),
                ),
              ),
              Container(
                height: 300,
                width: double.maxFinite,
                child: TabBarView(
                  controller: tabController,
                  children: [
                    Text("Hi"),
                    Text("There"),
                    Text("Bye"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CircleTabIndicator extends Decoration{
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    throw UnimplementedError();
  }
}

// class _CirclePainter extends BoxPainter{
//   @override
//   void paint(
//
//       )
// }