import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImagePick extends StatefulWidget {
  @override
  State<ImagePick> createState() {
    return ImagePickState();
  }
}

class ImagePickState extends State<ImagePick> {
  Image _img = Image.asset("assets/images/bir.png", width: 200, height: 200);
  String _hasImage = "False";
  @override
  Widget build(BuildContext context) {
    return (Column(
      children: [
        ElevatedButton(
            onPressed: () => {getImage()},
            child: Text(_hasImage),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            )),
        _img
      ],
    ));
  }

  void getImage() async {
    ImagePicker imagePicker = ImagePicker();
    XFile? image = await imagePicker.pickImage(source: ImageSource.camera);
    if (image != null) {
      setState(() {
        _img = Image.file(File(image
            .path)); //creating Image Object using path in XFile;Xfile-->File-->Image
        _hasImage = "True";
      });
    }
  }
}
