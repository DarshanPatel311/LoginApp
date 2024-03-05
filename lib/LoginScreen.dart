import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginapp/main.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController txtEmail=TextEditingController();
  TextEditingController txtPassword =TextEditingController();
  bool password=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Image.asset('assets/img/istockphoto-1433931166-612x612.jpg',height: 300,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Login to your\nAccount",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  height: 65,
                  decoration: BoxDecoration(
                    color: Color(0xffF9F9F9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: TextField(
                     textInputAction: TextInputAction.next,
                      controller: txtEmail,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: Colors.black,
                          ),
                          label: Text(
                            "Email",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          hintText: 'abc@gmail.com'),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  height: 65,
                  decoration: BoxDecoration(
                    color: Color(0xffF9F9F9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: TextField(
                      obscureText: password,


                      controller: txtPassword,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),

                        suffixIcon: IconButton(
                          icon: (password)?Icon(Icons.remove_red_eye_outlined):Icon(Icons.remove_red_eye),
                          onPressed: () {
                            setState(() {
                              if(password)
                              {
                                password = false;
                              }
                              else
                              {
                                password = true;
                              }
                            });
                          },
                        ),



                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),

                        label: Text(
                          "Password",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        hintText: '1234',
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  setState(() {

                    Email = txtEmail.text;
                    Password = txtPassword.text;

                  });
                  Navigator.pushNamed(context, '/Screen');
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: 55,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "Forgot Password ?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Image.asset(
                    'assets/img/Google_Icons-09-512.webp',
                    height: 50,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Image.asset(
                    'assets/img/apple-logo-6-1024x1024.png',
                    height: 40,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Image.asset(
                    'assets/img/png-transparent-apple-logo-iphone-computer-apple-logo-company-heart-logo.png',
                    height: 35,
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.fromLTRB(130, 0, 0, 0),
                child: Row(
                  children: [
                    Text("Already a member?",style: TextStyle(
                      fontSize: 11,
                    ),),
                    Text(" Login",style: TextStyle(
                      color: Colors.red,
                      fontSize: 12,
                    ),),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}
String Email='';
String Password='';
class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              Text(Email,style: TextStyle(
                fontSize: 25,
              )),
              Text(Password,style: TextStyle(
                fontSize: 25,
              )),
            ],
          )
        ],
      ),
    );
  }
}

