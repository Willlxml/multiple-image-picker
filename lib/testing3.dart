import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:http/http.dart' as http;

class PostTest3 extends StatefulWidget {
  @override
  State<PostTest3> createState() => _PostTest3State();
}

class _PostTest3State extends State<PostTest3> {
  final ImagePicker imagePicker = ImagePicker();

  List<XFile> imageFileList = [];

  void selectImage() async {
    final List<XFile> selectedImage = await imagePicker.pickMultiImage();
    if (selectedImage.isNotEmpty) {
      imageFileList.addAll(selectedImage);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TESTING"),
      ),
      body: Center(
        child: Column(
          children: [
            MaterialButton(
              color: Colors.blue,
              child: Text(
                "pick image",
                style: TextStyle(
                    color: Colors.white70, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                selectImage();
              },
            ),
            SizedBox(height: 20),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: GridView.builder(
                    itemCount: imageFileList.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                    itemBuilder: (BuildContext context, int index) {
                      return Image.file(File(imageFileList[index].path),
                          fit: BoxFit.cover);
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
