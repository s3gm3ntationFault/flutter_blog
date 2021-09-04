import 'package:flutter/material.dart';
import 'package:flutter_blog/models/Blog.dart';

import '../../constraints.dart';
import 'components/blog_post_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
          child: Container(
            width: double.infinity,
            height: 400,
            padding: EdgeInsets.all(kDefaultPadding),
            decoration: BoxDecoration(
              color: kDarkColor,
              borderRadius:
                  BorderRadius.all(Radius.circular(kDefaultPadding / 4)),
            ),
            child: Column(
              children: [
                Text(
                  "Search",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
