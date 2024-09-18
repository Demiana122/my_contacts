// import 'package:flutter/material.dart';

// class StartSocialMedia extends StatelessWidget {
   
//     Uri url;

//   // الكونسركتور (اختياري) إذا كنت بحاجة إلى تمرير بيانات إلى الكلاس
//    StartSocialMedia({super,key,
     
//       required this.url,
//    }); 

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(backgroundColor: Colors.transparent,),
//       body: Center(
//         child: ElevatedButton(onPressed: (){
//            launchUrl(Uri.parse(SocialMediaLinks),mode: LaunchMode.externalApplication);
//         }, child: Text("Start Social Media")),

//       ),
//     );
//    }
 import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class StartSocialMedia extends StatelessWidget {
  final Uri url;  // التأكد من أن url تم تعريفه كـ final

  // الكونسركتور الصحيح
  StartSocialMedia({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor:   const Color.fromRGBO(3, 7, 30, 1),
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor:WidgetStatePropertyAll(Colors.orange)
          ),
          onPressed: () {
            // استخدام url الممرر كمعامل
            launchUrl(url, mode: LaunchMode.externalApplication);
          },
          child: Text("Start Social Media"),
        ),
      ),
    );
  }
} 