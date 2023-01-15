// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:url_launcher/url_launcher.dart';

// class PrimaryButton extends StatefulWidget {
//   const PrimaryButton({super.key, required this.onTapUrl, required this.text});

//   final String onTapUrl;
//   final String text;

//   @override
//   State<PrimaryButton> createState() => _PrimaryButtonState();
// }

// class _PrimaryButtonState extends State<PrimaryButton> {
  
//   Widget build(BuildContext context) {
   


//     return Padding(
//       padding: const EdgeInsets.only(left: 10, right: 10),
//       child: ClipRRect(
//           borderRadius: BorderRadius.circular(50),
//           child: ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               minimumSize: const Size(double.infinity, 50),
//               maximumSize: const Size(double.infinity, 50),
//             ),
//             onPressed: () {
//               openUrl(widget.onTapUrl);
//             },
//             child: Text(
//               widget.text,
//             ),
//           )),
//     );
//   }
// }
