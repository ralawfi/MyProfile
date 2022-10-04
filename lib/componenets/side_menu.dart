import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_profile/componenets/pdf_viewer_page.dart';
import 'package:flutter_profile/componenets/start_url.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/componenets/skills.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Knowledges.dart';
import 'area_info_text.dart';
import 'coding.dart';
import 'my_info.dart';

late Uri _url;

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: "Residence",
                      text: "Saudi Arabia",
                    ),
                    AreaInfoText(
                      title: "City",
                      text: "Riyadh",
                    ),
                    AreaInfoText(
                      title: "Mobile Number",
                      text: "0507064448",
                    ),
                    Skills(),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    Coding(),
                    Knowledges(),
                    Divider(),
                    SizedBox(
                      height: defaultPadding / 2,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PDFViewerPage(),
                          ),
                        );
                      },
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DOWNLOAD CV",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                              ),
                            ),
                            SizedBox(
                              width: defaultPadding / 2,
                            ),
                            SvgPicture.asset(
                              "assets/icons/download.svg",
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              _url = Uri.parse(
                                  'https://www.linkedin.com/in/raed-alawfi/');
                              //_startURL(_url);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => StartUrl(_url),
                                ),
                              );
                            },
                            icon: SvgPicture.asset(
                              "assets/icons/linkedin.svg",
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              _url = Uri.parse('https://github.com/ralawfi');
                              _startURL(_url);
                            },
                            icon: SvgPicture.asset(
                              "assets/icons/github.svg",
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              _url = Uri.parse('https://twitter.com/MrAlawfi');
                              _startURL(_url);
                            },
                            icon: SvgPicture.asset(
                              "assets/icons/twitter.svg",
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _startURL(Uri url) async {
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }
}
