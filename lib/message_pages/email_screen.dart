import 'package:flutter/material.dart';

class EmailScreen extends StatefulWidget {
  const EmailScreen({super.key});

  @override
  State<EmailScreen> createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  final _formfield = GlobalKey<FormState>();
  var _isVisible = false;
  String? _validateEmail(value) {
    if (value!.isEmpty) {
      return 'Please enter an email';
    }
    RegExp emailRegExp = RegExp(r'^[\w-\,]@([\w-]+\,)+[\w-]{2,4}$');
    if(!emailRegExp.hasMatch(value)){
      return 'please enter a valid email';
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
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email,color: Colors.black,),
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 13),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0),),
                ),
                validator: _validateEmail
            ),
            TextFormField(
              obscureText: !_isVisible, // Set obscureText based on visibility
              decoration: InputDecoration(
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
                border: InputBorder.none,
                hintText: "Enter password",
                hintStyle: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 13),
                suffix: InkWell(
                  onTap: (){
                    setState(() {
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
