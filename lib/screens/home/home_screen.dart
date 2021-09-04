import 'package:flutter/material.dart';
import 'package:flutter_blog/models/Blog.dart';
import 'package:flutter_blog/screens/home/components/sidebar_container.dart';

import '../../constraints.dart';
import 'components/blog_post_card.dart';
import 'components/categories.dart';
import 'components/recent_post_card.dart';
import 'components/recent_posts.dart';
import 'components/search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            children: List.generate(
              blogPosts.length,
              (index) => BlogPostCard(blog: blogPosts[index]),
            ),
          ),
        ),
        SizedBox(width: kDefaultPadding),
        // Sidebar
        Expanded(
          child: Column(
            children: [
              Search(),
              SizedBox(height: kDefaultPadding),
              Categories(),
              SizedBox(height: kDefaultPadding),
              RecentPosts(),
            ],
          ),
        ),
      ],
    );
  }
}
