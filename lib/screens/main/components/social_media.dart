import 'package:flutter/material.dart';
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
        SvgPicture.asset("icons/linkedin.svg"),
        SizedBox(width: kDefaultPadding / 2),
        SvgPicture.asset("icons/linkedin.svg"),
        SizedBox(width: kDefaultPadding / 2),
        ElevatedButton(
          onPressed: () {},
          child: Text("Let's Talk"),
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding * 1.5,
              vertical: kDefaultPadding,
            ),
          ),
        ),
      ],
    );
  }
}
