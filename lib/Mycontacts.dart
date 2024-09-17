import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/SocialMediaIcon.dart';
import 'package:url_launcher/url_launcher.dart';

class Mycontacts extends StatelessWidget {
   Mycontacts({super.key});
   Map<String,String> socialMedia ={
 'facebook.jpg':'https://www.facebook.com/?locale=ar_AR',
    'gitup.png': 'https://github.com/',
    'instgram.jpg':'https://www.instagram.com/',
    'linkedin.png':'https://www.linkedin.com/login/ar',
    'tiktok.png': 'https://www.tiktok.com/ar/',
    'twitter.png': 'https://x.com/?lang=ar'
    };
   
  get onPressed => null;
  
  get childern => null;

  @override
  Widget build(BuildContext mycontext) {
    var height;
    return Scaffold(
      backgroundColor:   const Color.fromRGBO(3, 7, 30, 1),
     // appBar: AppBar(),
      body: SizedBox(
       width: double.infinity,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                 const SizedBox(
                  height :80,
                  ),
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/demiana.jpg'),
                    radius: 100,
                  ),
                  const SizedBox(height: 20,),
                  const Text('Joy Hany',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
               const SizedBox(height: 20,),
                 
                  //  color: Colors.red,
                    Row(
                     // mainAxisAlignment: MainAxisAlignment.center,
                     mainAxisSize:MainAxisSize.min,
                      children: [
                        const Text('+20123456789',style: TextStyle(
                          fontSize: 20,
                        color: Colors.grey,
                        ),
                        ),
                         const SizedBox(height: 20,),
                                  IconButton(icon: const Icon(Icons.phone, size:22,color: Colors.grey,),
                                  onPressed: () {
                                  launchUrl(Uri.parse('tel :+20123456789'));
                                  },
                                ),
                      ],
                  
                  ),
                 const SizedBox(height: 20,
                 ),
               GridView.builder(
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
                 )
                ],
              ),
            ),
          ),
      );
  
    
  }
}

