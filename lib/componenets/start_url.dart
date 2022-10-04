import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class StartUrl extends StatelessWidget {
  late Uri url;
  StartUrl(this.url, {super.key});

  @override
  Widget build(BuildContext context) {
    _startURL(url);
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(),
        body: Center(child: Text("New Window is open!")),
      ),
    );
  }

  _startURL(Uri url) async {
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }
}
