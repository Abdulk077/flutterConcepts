import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerWidgettest extends StatefulWidget {
  const ImagePickerWidgettest({super.key});

  @override
  State<ImagePickerWidgettest> createState() => _ImagePickerWidgettestState();
}

class _ImagePickerWidgettestState extends State<ImagePickerWidgettest> {
  final ImagePicker _picker = ImagePicker();
  XFile? file;
  List<XFile>? _files;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Image Picker'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.red,
                child: file != null
                    ? Image.file(
                        File(file!.path),
                        fit: BoxFit.cover,
                      )
                    : Text('Not Picked'),
              ),
              //Single Image
              TextButton(
                  onPressed: () async {
                    final XFile? photo =
                        await _picker.pickImage(source: ImageSource.gallery);
                    setState(() {
                      file = photo;
                    });
                  },
                  child: Text('Pick  Image')),
              //Multiple Images
              TextButton(
                  onPressed: () async {
                    final List<XFile>? images = await _picker.pickMultiImage();
                    setState(() {
                      _files = images;
                      for (int i = 0; i < _files!.length; i++) {
                        print(_files![i].path);
                      }
                    });
                  },
                  child: Text('Pick Multiple Image'))
            ],
          ),
        ));
    ;
  }
}
