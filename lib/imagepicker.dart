import 'package:calorie_tracker/customButton.dart';
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
  Image _img = Image.asset('assets/images/bir.png', height: 200, width: 200);
  String _hasImage = "False";
  @override
  Widget build(BuildContext context) {
    return (SizedBox(
        width: 400,
        height: 600,
        child: Card(
            margin: EdgeInsets.all(30),
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(height: 20),
                SizedBox(
                    width: 200,
                    child: ElevatedButton(
                        onPressed: () => {getImage()}, child: Custombutton())),
                SizedBox(height: 20),
                _img,
                SizedBox(height: 20)
              ],
            ))));
  }

  void getImage() async {
    ImagePicker imagePicker = ImagePicker();
    XFile? image = await imagePicker.pickImage(source: ImageSource.camera);
    if (image != null) {
      setState(() {
        _img = Image.file(File(image.path),
            width: 400,
            height:
                400); //creating Image Object using path in XFile;Xfile-->File-->Image
        _hasImage = "True";
      });
    }
  }
}
