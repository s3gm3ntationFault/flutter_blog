import 'package:flutter/material.dart';
import 'package:flutter_blog/responsive.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constraints.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isMobile(context))
          SvgPicture.asset("assets/icons/linkedin.svg"),
        if (!Responsive.isMobile(context)) SizedBox(width: kDefaultPadding / 2),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            "Let's Talk",
            style: TextStyle(color: kDarkColor, fontWeight: FontWeight.bold),
          ),
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding * 1.5,
              vertical:
                  kDefaultPadding / (Responsive.isDesktop(context) ? 1 : 2),
            ),
          ),
        ),
      ],
    );
  }
}
