import 'package:flutter/material.dart';
import 'package:qure_me/screen/profile.dart';

class FormDetails extends StatefulWidget {
  const FormDetails({
    Key? key,
    formKey,
  }) : super(key: key);

  @override
  State<FormDetails> createState() => _FormDetailsState();
}

class _FormDetailsState extends State<FormDetails> {
  final formKey = GlobalKey<FormState>();
  get myController => TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Form(
      key: formKey, //key for form
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: " EMP ID ",
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: " First Name ",
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: " Last Name ",
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "Contact Number",
            ),
          ),

          TextField(
            decoration: InputDecoration(
              labelText: "  Email ID",
            ),
          ),

          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              TextButton(
                  onPressed: () {
                     Navigator.push(context,MaterialPageRoute(builder:(context) =>ProfileSection()));

                    // EditInfo();
                  },
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal:width*0.05 ),
                    child: Text(
                      "Register",
                      style: TextStyle(
                        color: Color(0xFF630BFF),
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  )),
              SizedBox(
                width: 10,
              ),
              TextButton(
                  onPressed: () {},
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal:width*0.05 ),
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                        color: Color(0xFF929292),
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
