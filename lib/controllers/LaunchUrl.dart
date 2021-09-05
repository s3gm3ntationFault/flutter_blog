import 'package:url_launcher/url_launcher.dart';

launchURL(url) async {
  if (await canLaunch(url)) {
    await launch(url, webOnlyWindowName: "_self");
  } else {
    throw "Could not launch $url";
  }
}
