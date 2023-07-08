import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body:Stack(children:
      [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image(
            image:NetworkImage("https://images.pexels.com/photos/235986/pexels-photo-23"
                "5986.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",),
            fit: BoxFit.cover,

          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Container(
          padding: EdgeInsets.only(
            top: 50,
          ),
                decoration: BoxDecoration(
               borderRadius: BorderRadius.all(
                 Radius.circular(20),
                   ),
                ),
                child: Image(image: AssetImage("image/logo_quizapp.png"),
                  height: 150,
                  width: 150,
                ),
              ),
              SizedBox(
                height: 200,
              ),
              Text('Login' ,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(

                  decoration: InputDecoration(
                    hintText: 'Username',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(

                  decoration: InputDecoration(
                    hintText: 'Password',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width*.5,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Login'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
             IconButton(onPressed: (){
               print("hello");
             },
                 icon: Icon(Icons.fingerprint,
                   color: Colors.blue,
                   size: 80,
                 ),)


              // Container(
              //     width: MediaQuery.of(context).size.width,
              //     height: MediaQuery.of(context).size.height/2,
              //     decoration: BoxDecoration(
              //       //borderRadius: BorderRadius.only(),
              //       borderRadius: BorderRadius.circular(60),
              //       color: Colors.white,
              //     ),
              //
              //   ),


            ],
          ),
        )
      ]

      ),


    );
  }
}
