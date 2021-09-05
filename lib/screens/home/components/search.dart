import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constraints.dart';
import 'sidebar_container.dart';

class Search extends StatelessWidget {
  const Search({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SidebarContainer(
      title: "Search",
      child: TextField(
        onChanged: (value) {},
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: "Type Here ...",
          hintStyle: Theme.of(context).textTheme.caption,
          suffixIcon: Padding(
            padding: const EdgeInsets.all(kDefaultPadding / 2),
            child: SvgPicture.asset("assets/icons/feather_search.svg"),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(kDefaultPadding / 2),
            ),
            borderSide: BorderSide(
              color: Color(0xFFCCCCCC),
            ),
          ),
        ),
      ),
    );
  }
}
