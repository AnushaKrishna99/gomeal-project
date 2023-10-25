import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gomeal/message_pages/simple_map_screen.dart';
import 'package:gomeal/message_pages/user_name.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:typed_data';
import 'dart:io';

import 'current_location.dart';

class MessagePages extends StatefulWidget {
  const MessagePages({super.key});

  @override
  State<MessagePages> createState() => _MessagePagesState();
}

class _MessagePagesState extends State<MessagePages> {

var _isVisible = false;
Uint8List webImage = Uint8List(8);
File? _pickedImage;
Future<void> _pickImage() async {
  if (kIsWeb) {
    final ImagePicker _picker = ImagePicker();
    XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      var f = await image.readAsBytes();
      setState(() {
        webImage = f;
        _pickedImage = File(image.path); // Update _pickedImage
        showDefaultImage = false; // Hide the default image
      });
    } else{
      setState(() {
        _pickedImage = null;
      });
    }
  }
}
bool showOptions = false;
bool showDefaultImage = true;


Widget buildImageContainer() {
  return GestureDetector(
    onTap: () {
      if (_pickedImage == null) {
        _pickImage();
      }
    },
    child: Container(
      margin: EdgeInsets.only(right: 10.0),
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black26, width: 1.0),
      ),
      child: showDefaultImage
          ? Center(
        child: Image.asset(
          "assets/images/boy4.jpg",
          fit: BoxFit.cover,
        ),
      )
          : (_pickedImage != null)
          ? Image.memory(
        webImage,
        fit: BoxFit.fill,
        width: double.infinity,
        height: double.infinity,
      )
          : Container(),
    ),
  );
}
void _removeDefaultImage() {
  setState(() {
    showDefaultImage = false;
    _pickedImage = null;
  });
}
final _formfield = GlobalKey<FormState>();
  final _formkey = GlobalKey<FormState>();


String? _validateEmail(value) {
  if (value!.isEmpty) {
    return 'Please enter an email';
  }
  RegExp emailRegExp = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
  if(!emailRegExp.hasMatch(value)){
    return 'please enter a valid email';
  }
  return null;
}
  String? _validatePassword(value) {
    if (value!.isEmpty) {
      return 'Please enter a Password';
    }
    RegExp passwordRegExp = RegExp( r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#$%^&*()_+{}|;:,-<.>?/~]).{8,}$');
    if(!passwordRegExp.hasMatch(value)){
      return 'please enter 8 digit Strong Password';
    }
    return null;
  }
void _submitForm(){
  if(_formkey.currentState!.validate()) {}
}
void _submitForm1(){
  if(_formfield.currentState!.validate()) {}
}
String? _validatePhoneNumber(value){
  if(value!.isEmpty){
    return 'Please enter a phone number';
  }
  if(value.length != 10){
    return 'Please enter a 10-digit number';
  }
  return null;
}
void _saveSettings() {
  if (_formkey.currentState!.validate() &&
      _formfield.currentState!.validate()) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Saved Successfully'),
        duration: Duration(seconds: 2),
      ),
    );
    _formkey.currentState!.reset();
    _formfield.currentState!.reset();
  }
}

@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
       child: Container(
         height: 1100.0,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Padding(
                   padding:  EdgeInsets.only(top:40.0,left: 35.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text(
                         "Settings",
                         style: TextStyle(
                           color: Colors.black,
                           fontFamily: 'RenogareSoft',
                           fontWeight: FontWeight.bold,
                           fontSize: 20,
                         ),
                       ),
                     ],
                   ),
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Container(
                       margin: EdgeInsets.only(left: 30.0,top: 20.0),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Icon(Icons.dining_outlined, color: Colors.black),
                           SizedBox(width: 10.0,),
                           Icon(Icons.notifications_none, color: Colors.black),
                           SizedBox(width: 10.0,),
                           Icon(Icons.settings, color: Colors.black),],
                       ),
                     ),

                     Row(
                       children: [
                         SizedBox(width: 40.0,),
                         Container(
                           margin: EdgeInsets.only(right: 30.0,top: 20.0),
                           height: 35.0,
                           width: 35.0,
                           decoration: BoxDecoration(
                             color: Colors.white,
                             border: Border.all(color: Colors.black),
                             borderRadius: BorderRadius.circular(5.0),
                           ),
                           child: Image.asset("assets/images/driver.jpg",
                             fit: BoxFit.fill,
                           ),
                         ),
                       ],
                     ),
                   ],
                 ),
               ],
             ),
             SizedBox(height: 20.0,),
              Row(
                children: [
              Container(
                margin: EdgeInsets.only(left: 30.0),
               height: 600.0,
               width: 300.0,
               decoration: BoxDecoration(
               color: Colors.white,
                 borderRadius: BorderRadius.circular(10.0),
               ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20.0,left: 10.0),
                      child: Row(
                        children: [
                          Icon(Icons.man,color: Colors.black,size: 20.0,),
                          Container(
                              margin: EdgeInsets.only(left: 20.0),
                              child: Text("Account",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft',),))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5.0,left: 14.0),
                      child: Text("Lorem ipsum dolor sit amet, consectetur\n adipiscing elit, sed do eiusmod tempor.",
                          style: TextStyle(color: Colors.grey.shade500,fontSize: 10,fontWeight: FontWeight.bold,fontFamily: 'Poppins',)),
                    ),
                    SizedBox(height: 20.0,),
                    Container(
                      margin: EdgeInsets.only(top: 10.0,left: 10.0),
                      child: Row(
                        children: [
                          Icon(Icons.bookmark_add_outlined,color: Colors.black,size: 20.0,),
                          Container(
                              margin: EdgeInsets.only(left: 20.0),
                              child: Text("Notification",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft',),))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5.0,left: 14.0),
                      child: Text("Lorem ipsum dolor sit amet, consectetur\n adipiscing elit, sed do eiusmod tempor.",
                          style: TextStyle(color: Colors.grey.shade500,fontSize: 10,fontWeight: FontWeight.bold,fontFamily: 'Poppins',)),
                    ),
                    SizedBox(height: 20.0,),
                    Container(
                      margin: EdgeInsets.only(top: 10.0,left: 10.0),
                      child: Row(
                        children: [
                          Icon(Icons.security,color: Colors.black,size: 20.0,),
                          Container(
                              margin: EdgeInsets.only(left: 20.0),
                              child: Text("Security",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft',),))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5.0,left: 14.0),
                      child: Text("Lorem ipsum dolor sit amet, consectetur\n adipiscing elit, sed do eiusmod tempor.",
                          style: TextStyle(color: Colors.grey.shade500,fontSize: 10,fontWeight: FontWeight.bold,fontFamily: 'Poppins',)),
                    ),
                    SizedBox(height: 20.0,),
                    Container(
                      margin: EdgeInsets.only(top: 10.0,left: 10.0),
                      child: Row(
                        children: [
                          Icon(Icons.payments_rounded,color: Colors.black,size: 20.0,),
                          Container(
                              margin: EdgeInsets.only(left: 20.0),
                              child: Text("Payment",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft',),))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5.0,left: 14.0),
                      child: Text("Lorem ipsum dolor sit amet, consectetur\n adipiscing elit, sed do eiusmod tempor.",
                          style: TextStyle(color: Colors.grey.shade500,fontSize: 10,fontWeight: FontWeight.bold,fontFamily: 'Poppins',)),
                    ),
                    SizedBox(height: 20.0,),
                    Container(
                      margin: EdgeInsets.only(top: 10.0,left: 10.0),
                      child: Row(
                        children: [
                          Icon(Icons.more_horiz_outlined,color: Colors.black,size: 20.0,),
                          Container(
                              margin: EdgeInsets.only(left: 20.0),
                              child: Text("Help",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft',),))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5.0,left: 14.0),
                      child: Text("Lorem ipsum dolor sit amet, consectetur\n adipiscing elit, sed do eiusmod tempor.",
                          style: TextStyle(color: Colors.grey.shade500,fontSize: 10,fontWeight: FontWeight.bold,fontFamily: 'Poppins',)),
                    ),
                    SizedBox(height: 20.0,),
                    Container(
                      margin: EdgeInsets.only(top: 10.0,left: 10.0),
                      child: Row(
                        children: [
                          Icon(Icons.polyline,color: Colors.black,size: 20.0,),
                          Container(
                              margin: EdgeInsets.only(left: 20.0),
                              child: Text("Privacy Policy",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft',),))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5.0,left: 14.0),
                      child: Text("Lorem ipsum dolor sit amet, consectetur\n adipiscing elit, sed do eiusmod tempor.",
                          style: TextStyle(color: Colors.grey.shade500,fontSize: 10,fontWeight: FontWeight.bold,fontFamily: 'Poppins',)),
                    ),
                  ],
                ),
             ),
              SizedBox(width: 10.0,),
              Container(
               height: 650.0,
               width: 680.0,
               decoration: BoxDecoration(
               color: Colors.white.withOpacity(0.4),
                 borderRadius: BorderRadius.circular(10.0),
               ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 570.0,top: 20.0),
                      child: Text("Account",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft',)),
                   ),
                    Container(
                      margin: EdgeInsets.only(right: 560.0,top: 10.0),
                      child: Text("Photo Profile",style: TextStyle(color: Colors.grey.shade500,fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'Poppins',)),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 30, left: 30),
                          child: Row(
                            children: [
                              buildImageContainer(), // Image container
                              Container(
                                margin: EdgeInsets.only(right: 0.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    _pickImage();
                                  },
                                  child: Text("Change Photo",style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 30.0,right: 00),
                              child: TextButton(
                                onPressed: _removeDefaultImage,
                                child: Text(
                                  "Remove",
                                  style: TextStyle(
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
                    ),
                    SizedBox(height: 20.0,),
                    Form(
                      key: _formkey,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 180.0),
                                child: Text("Username",style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 25.0,top: 7.0),
                                height: 60.0,
                                width: 270.0,

                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 0.0,left: 5.0),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelText: 'Enter Name',
                                      labelStyle: TextStyle(color: Colors.black,fontFamily: 'Poppins',fontSize: 13),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    validator: (value){
                                      if(value!.isEmpty){
                                        return 'please enter username';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 20.0,),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 180.0),
                                child: Text(
                                  "Phone",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 25.0, top: 7.0),
                                height: 65.0,
                                width: 270.0,
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 8.0, left: 5.0),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelText: '+123456',
                                      labelStyle: TextStyle(color: Colors.black,fontFamily: 'Poppins',fontSize: 13),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    validator: _validatePhoneNumber,
                                  ),
                                ),
                              ),
                            ],
                          )

                        ],
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    Form(
                      key: _formfield,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 180.0),
                                child: Text("Email",style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 25.0,top: 7.0),
                                height: 60.0,
                                width: 270.0,

                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 0.0,left: 5.0),
                                  child: TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.email,color: Colors.black,),
                                      labelText: 'Email',
                                      labelStyle: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 13),
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0),),
                                    ),
                                    validator: _validateEmail
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 20.0,),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 180.0),
                                child: Text(
                                  "Password",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 25.0, top: 7.0),
                                height: 65.0,
                                width: 270.0,
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 8.0, left: 5.0),
                                  child: TextFormField(
                                    keyboardType: TextInputType.visiblePassword,
                                    obscureText: !_isVisible,
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.lock,color: Colors.black,),
                                        labelText: 'Password',
                                        labelStyle: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 13),
                                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0),),
                                        suffixIcon: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              _isVisible = !_isVisible; // Toggle visibility
                                            });
                                          },
                                          icon: Padding(
                                            padding:  EdgeInsets.all(0.0),
                                            child: Icon(
                                              _isVisible ? Icons.visibility : Icons.visibility_off,
                                              color: Colors.black,
                                              size: 20,
                                            ),
                                          ),
                                        ),
                                      ),
                                      validator: _validatePassword,
                                  ),
                                ),
                              ),
                            ],
                          )

                           ],
                            ),
                    ),
                    SizedBox(height: 20.0,),
                    Row(
                      children: [
                       Column(
                         children: [
                           Container(
                             margin: EdgeInsets.only(right: 145.0),
                             child: Text("Your Location",style: TextStyle(
                               fontFamily: 'Poppins',
                               color: Colors.grey,
                               fontSize: 12,
                             ),
                             ),
                           ),
                           Container(
                             margin: EdgeInsets.only(left: 30.0,),
                             height: 100.0,
                             width: 270.0,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10.0),
                               border: Border.all(color: Colors.grey),
                             ),
                             child: CurrentLocation(),
                           ),
                         ],
                       ),
                        SizedBox(width: 20.0,),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 135.0),
                              child: Text("Address Details",style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 7.0,left: 20.0),
                              padding: EdgeInsets.only(top: 20.0,left: 25.0),
                              height: 100.0,
                              width: 270.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Text(" Franklin Avenue Street\n New York, ABC 5562\n United State",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20.0,),
                    Container(
                      margin: EdgeInsets.only(left: 420.0,bottom: 20.0),
                      child: ElevatedButton(
                        onPressed: (){
                          _submitForm();
                          _submitForm1();
                          _saveSettings();
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.amberAccent,
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          side: BorderSide(color: Colors.amber),
                          minimumSize: Size(130.0, 40.0),
                        ),
                        child: Text(
                          "Save Setting",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
             ),
                ],
              ),
           ],
         ),
       ),
      ),
    );
  }
}
