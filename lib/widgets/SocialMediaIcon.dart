import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/start.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIcon extends StatelessWidget {
  String SocialMedia;
    String SocialMediaLinks;
   SocialMediaIcon({
    super.key,
    required this.SocialMedia,
      required this.SocialMediaLinks,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: InkWell(
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
        backgroundImage: AssetImage('assets/$SocialMedia'),
        radius: 40,
                        ),
          onTap: () {
            Navigator.push(
    context,
   MaterialPageRoute(builder: (context) => StartSocialMedia(url: Uri.parse(SocialMediaLinks))),

  );
          },              
      ),
    );
  }
}
