import 'package:flutter/material.dart';

import '../../../constraints.dart';
import 'recent_post_card.dart';
import 'sidebar_container.dart';

class RecentPosts extends StatelessWidget {
  const RecentPosts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SidebarContainer(
      title: "Recent Posts",
      child: Column(
        children: [
          RecentPostCard(
            image: "assets/images/blog0.jpg",
            title: "A geosynchronous pool table",
            press: () {},
          ),
          SizedBox(height: kDefaultPadding),
          RecentPostCard(
            image: "assets/images/blog1.jpg",
            title: "The broken bottle related to another Harpoon",
            press: () {},
          ),
        ],
      ),
    );
  }
}
