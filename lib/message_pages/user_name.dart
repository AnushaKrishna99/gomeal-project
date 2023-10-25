import 'package:flutter/material.dart';

class UserName extends StatefulWidget {
  const UserName({super.key});

  @override
  State<UserName> createState() => _UserNameState();
}

class _UserNameState extends State<UserName> {
  final _formfield = GlobalKey<FormState>();


  String? _validatePhoneNumber(value){
    if(value!.isEmpty){
      return 'Please enter a phone number';
    }
    if(value.length != 10){
      return 'Please enter a 10-digit number';
    }
    return null;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formfield,
        child: Row(
          children: [
            TextFormField(
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
            SizedBox(width: 20.0,),
            TextFormField(
              decoration: InputDecoration(
                labelText: '+123456',
                labelStyle: TextStyle(color: Colors.black,fontFamily: 'Poppins',fontSize: 13),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              validator: _validatePhoneNumber,
            ),
          ],
        ),
      ),
    );
  }
}
