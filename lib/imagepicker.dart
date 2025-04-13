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
  File? _imageFile;
  String _hasImage = "False";
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => {getImage()}, child: Text(_hasImage));
  }

  void getImage() async {
    ImagePicker imagePicker = ImagePicker();
    XFile? image = await imagePicker.pickImage(source: ImageSource.camera);
    if (image != null) {
      setState(() {
        _imageFile =
            File(image.path); //creating File Object using path in XFile;
        _hasImage = "True";
      });
    }
  }
}
