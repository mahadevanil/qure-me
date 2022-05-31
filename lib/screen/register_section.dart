import 'package:flutter/material.dart';

import 'form_details.dart';

class RegisterSection extends StatelessWidget {
  const RegisterSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return  Scaffold(
      appBar: AppBar(
        title: Text("Register"),
        elevation: 0,
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: <Widget>[

          Padding(
            padding:  EdgeInsets.all(width*0.05),
            child: FormDetails(),
          ),
        ],
      ),
    );
  }
}
