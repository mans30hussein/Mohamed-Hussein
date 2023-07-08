import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  bool ischecked = false;
  var emailController = TextEditingController() ;
  var passwordController = TextEditingController() ;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 50
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                const CircleAvatar(backgroundImage: AssetImage("image/logo_quizapp.png"),
                  radius: 100,
                ),

                const SizedBox(
                  height: 30,
                ),
                SingleChildScrollView(
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height *.65 ,
                      decoration: const BoxDecoration(
                        //borderRadius: BorderRadius.only(),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(60),
                          topLeft: Radius.circular(60),
                        ),
                        color: Colors.white,
                      ),
                   // margin: EdgeInsets.all(30),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text("Login" ,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,

                            ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: TextField(
                              controller: emailController,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                               // prefixIcon: prefixIcon??Icon(Icons.done),
                                border: OutlineInputBorder(),
                                labelText: 'email address',
                                prefixIcon: const Icon(
                                  Icons.person,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: TextField(
                              controller: passwordController,
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: true,
                              decoration: InputDecoration(

                                border: OutlineInputBorder(),
                                labelText: 'Password',
                                suffixIcon: Icon(Icons.remove_red_eye),
                                prefixIcon: const Icon(
                                  Icons.lock,
                                  color: Colors.black,
                                ),
                                //icon: Checkbox(value: value, onChanged: onChanged)
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextButton(onPressed: (){},
                              child:Text("Register",style: TextStyle(color: Colors.black),),),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 200,
                            child: ElevatedButton(onPressed: (){
                              print(emailController.text);
                              print(passwordController.text);
                            },
                                child:Text('Login',

                                ),

                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Icon(Icons.fingerprint,size: 60,),
                          const SizedBox(
                            height: 5,
                          ),
                          Text('Touch Id'),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Container(
                               // padding: EdgeInsets.all(10),
                                child: Column(
                                  children: [

                                    Row(
                                      children: [

                                        Checkbox(value: ischecked, onChanged: (val){
                                          setState(() {
                                            ischecked = val! ;
                                          });

                                        }),
                                        Text('Remmber Me ?'),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 90,
                              ),
                              TextButton(onPressed: (){},
                                child:Text("Forgrt Password ?",style: TextStyle(color: Colors.black),),),
                            ],
                          )


                        ],
                      ),
                    )

                    ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}