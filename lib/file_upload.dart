import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';
import 'package:open_file/open_file.dart';

class FileUpload extends StatefulWidget {
  const FileUpload({super.key});

  @override
  State<FileUpload> createState() => _FileUploadState();
}

class _FileUploadState extends State<FileUpload> {
  void openFiles() async {
    FilePickerResult? resultFile = await FilePicker.platform.pickFiles(
      type: FileType.any,
      allowedExtensions: null,
    );
    if(resultFile != null){
      PlatformFile file = resultFile.files.first;
      print(file.name);
      print(file.extension);
    }else{

    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            content(),
            Container(
              margin: EdgeInsets.only(left: 20.0),
              padding: EdgeInsets.only(left: 5.0,top: 7.0),
              height: 30.0,
              width: 130.0,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(3.0),
              ),
              child: TextButton(onPressed: openFiles,
                child: Text( "Upload",style: TextStyle(
                             fontFamily: 'Poppins',
                             fontSize: 12,
                             color: Colors.black,
                            ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
  Widget content(){
    return GestureDetector(
      onTap: (){
        openFiles();
      },
      child: Container(
        margin: EdgeInsets.only(left: 40.0),
        padding: EdgeInsets.only(top: 30.0,left: 10.0),
        width: 90.0,
        height: 90.0,
        decoration: BoxDecoration(
        color: Colors.white,
          border: Border.all(color: Colors.grey),
        ),
        child: Text("Drop File\n   Here",style: TextStyle(color: Colors.black, fontFamily: 'Poppins',
          fontSize: 12,),),
      ),
    );
  }
}
