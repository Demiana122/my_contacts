import 'package:flutter/material.dart';

import 'SocialMediaIcon.dart';

class ContactsGrid extends StatelessWidget {
  const ContactsGrid({
    super.key,
    required this.socialMedia,
  });

  final Map<String, String> socialMedia;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
     itemCount: socialMedia.length,
     gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder:(mycontext,Index){
       if(Index<socialMedia.length) {
         return SocialMediaIcon(SocialMedia: socialMedia.keys.toList()[Index],SocialMediaLinks: socialMedia.values.toList()[Index]);
       return null;
       }
      
      },
       shrinkWrap: true,
       physics:const NeverScrollableScrollPhysics(),
       padding: const EdgeInsets.all(20),
      );
  }
}

