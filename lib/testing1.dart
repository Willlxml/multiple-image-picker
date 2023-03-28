// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'dart:io';
//
// class PostImagetest1 extends StatefulWidget {
//   const PostImagetest1({Key? key}) : super(key: key);
//
//   @override
//   State<PostImagetest1> createState() => _PostImagetest1State();
// }
//
// class _PostImagetest1State extends State<PostImagetest1> {
//   List<File> _imageList = [];
//
//   final ImagePicker _pick = ImagePicker();
//
//   Future<void> _pickImages() async {
//     List<XFile>? pickedImages =
//         await _pick.pickMultiImage(imageQuality: 50, maxWidth: 800);
//
//     if (pickedImages != null) {
//       List<File> tempImages = [];
//
//       for (var i = 0; i < pickedImages.length; i++) {
//         final File file = File(pickedImages[i].path);
//         tempImages.add(file);
//       }
//
//       setState(() {
//         _imageList = tempImages;
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Multi Pick Image"),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: _imageList.isEmpty
//                 ? Center(
//                     child: Text('no image'),
//                   )
//                 : GridView.builder(
//                   itemCount: _imageList.length,
//                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                         crossAxisCount: 3),
//                     itemBuilder: (BuildContext context, int index) {
//                       return Image.file(
//                         _imageList[index],
//                         fit: BoxFit.cover,
//                       );
//                     },
//                   ),
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _pickImages,
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
