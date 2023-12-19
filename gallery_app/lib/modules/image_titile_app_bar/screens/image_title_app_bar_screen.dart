import 'package:flutter/material.dart';
import 'package:gallery_app/widgets/app_bar_widgets/comment.dart';
import 'package:gallery_app/widgets/app_bar_widgets/description.dart';

const String image = "lib/assets/images/image.avif";

class ImageTitleAppBarScreen extends StatelessWidget {
  const ImageTitleAppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        body: DefaultTabController(
          length: 2,
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverAppBar(
                actions: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.download))
                ],
                foregroundColor: Colors.white,
                pinned: true,
                stretch: true,
                expandedHeight: 200,
                stretchTriggerOffset: 200,
                flexibleSpace: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.asset(
                            image,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.88),
                            ),
                          ),
                        ],
                      ),
                    ),
                    FlexibleSpaceBar(
                      stretchModes: const [
                        StretchMode.zoomBackground,
                        // StretchMode.fadeTitle,
                        // StretchMode.blurBackground
                      ],
                      expandedTitleScale: 1,
                      title: const Text(
                        "Super Lucky Mr. Fortune Teller",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      background: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.asset(
                            image,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Colors.black.withOpacity(0.8),
                                  Colors.transparent,
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SliverPersistentHeader(
                delegate: MySliverPersistentHeaderDelegate(
                  const TabBar(
                    indicatorColor: Colors.red,
                    labelColor: Colors.red,
                    tabs: [
                      Tab(
                        text: "Description",
                      ),
                      Tab(
                        text: "Episodes",
                      )
                    ],
                  ),
                ),
                pinned: true,
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  const Description(),
                  Container(
                    height: 20,
                    color: Colors.grey.shade800,
                  ),
                  const Comments(),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MySliverPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  MySliverPersistentHeaderDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: const Color.fromARGB(255, 22, 20, 20),
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(MySliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
