// // ignore_for_file: prefer_const_constructors
//
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'dart:io';
//
// class PostTest2 extends StatefulWidget {
//   @override
//   State<PostTest2> createState() => _PostTest2State();
// }
//
// class _PostTest2State extends State<PostTest2> {
//   final ImagePicker imgpick = ImagePicker();
//   List<XFile> imageFileList = [];
//   void selectedImage() async {
//     final List<XFile> selectedImage = await imgpick.pickMultiImage();
//     if (selectedImage.isEmpty) {
//       imageFileList.addAll(selectedImage);
//     }
//     setState(() {});
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           children: <Widget>[
//             Expanded(
//               child: Padding(
//                 padding: EdgeInsets.all(8),
//                 child: GridView.builder(
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
//                   itemCount: imageFileList.length,
//                   itemBuilder: (BuildContext context, int index) {
//                     return Image.file(
//                       File(imageFileList[index].path),
//                       fit: BoxFit.cover,
//                     );
//                   },
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             MaterialButton(
//                 color: Colors.blue,
//                 child: Text("SELECT"),
//                 onPressed: () {
//                   selectedImage();
//                   },),
//           ],
//         ),
//       ),
//     );
//   }
// }
