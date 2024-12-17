import 'package:flutter/material.dart';
import 'package:spotify_clone/core/configs/assets/app_images.dart';
import 'package:spotify_clone/core/configs/theme/app_colors.dart';
import 'package:spotify_clone/presentation/pages/intro/widget/heading_big_text_widget.dart';

import 'widget/new_reelase_widget.dart';
import 'widget/news_songs.dart';

// import '../../../../core/configs/assets/app_images.dart';
// import '../../../../core/configs/theme/app_colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  final List<Text> tab = [
      Text('News',style: TextStyle(
        fontSize: 20
      ),),
      Text('Video',style: TextStyle(
          fontSize: 20
      ),),
      Text('Artists',style: TextStyle(
          fontSize: 20
      ),),
      Text('Podcast',style: TextStyle(
          fontSize: 20
      ),),
      // Text('Podcast'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackground3,
      appBar: AppBar(
          backgroundColor: AppColors.darkBackground3,
          centerTitle: true,
          leading: null,
          // title: SvgPicture.asset(AppVectors.smalllogo)
          title: Image.asset(AppImages.smalllogo)
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // NewReleaseWidget(auhor: "Billie Eilish", track: "Happier Than \nEver", image: '',),
            NewReleaseWidget(auhor: "Billie Eilish", track: "Happier Than \nEver",),

            // SizedBox(height: 35,),
            // SizedBox(height: 20,),
            TabBar(
              indicatorColor: AppColors.primary,
              enableFeedback: true,
              dividerColor: Colors.transparent,
              labelColor: AppColors.white,
              unselectedLabelColor: AppColors.grey,
              // labelStyle: AppColors.lightBackground,
              controller: _tabController, tabs: tab,
              isScrollable: true,
              // padding: EdgeInsets.symmetric(horizontal: 100),
            ),

            Container(
              height: 270,
              child: TabBarView(
                controller: _tabController,
                  children: [
                    NewSongWidget(),
                    Container(
                      child: Center(child: Text('videos'),),
                    ),
                    Container(
                      child: Center(child: Text('Artists'),),
                    ),
                    Container(
                      child: Center(child: Text('Podcasts'),),
                    ),
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}

