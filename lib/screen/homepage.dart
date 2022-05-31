import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qure_me/screen/register_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,

      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Container(
          //   // decoration: BoxDecoration(
          //   //     color:Colors.green,
          //   //   borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),
          //   //     bottomRight: Radius.circular(25)
          //   //   )
          //   // ),
          //   color:Colors.green,
          //   height: height*0.25,
          //   child: Center(
          //     child: Text("Welcome ",
          //     style: TextStyle(
          //       fontSize:25,
          //       fontStyle: FontStyle.italic,
          //       fontWeight: FontWeight.bold,
          //       color: Colors.white,
          //     ),),
          //   ),
          //
          // ),

          Padding(
            padding:  EdgeInsets.all(width*0.1),
            child:  TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                labelText: 'User name',
                suffixIcon: Icon(Icons.email),
              ),
            ),
          ),

          Padding(
            padding:  EdgeInsets.symmetric(horizontal:width*0.1),
            child:  TextField(
              obscureText: true,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.visibility_off),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                labelText: 'Password',
              ),
            ),
          ),
          SizedBox(
            height: height*0.025,
          ),

          Container(
            margin:  EdgeInsets.symmetric(horizontal: width*0.1),
            width: width,
            child: FlatButton(
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder:(context) =>Welcome()));

                },
                color: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: const Text(
                  "Log In",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                )),
          ),
          SizedBox(
            height: height*0.015,
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterSection()));
            },
            child: Text.rich(
              TextSpan(
                  text: 'Don\'t have an account',
                  children: [
                    TextSpan(
                      text: 'Signup',
                      style: TextStyle(
                          color: Color(0xffEE7B23)
                      ),
                    ),
                  ]
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("Welcome to Qure me"),
        ),
      ),
    );
  }
}

