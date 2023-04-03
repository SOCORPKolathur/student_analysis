import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Darwer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        debugShowCheckedModeBanner: false,
        home: Login()
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF000000),
      body: Stack(
        children: [
          Container(
            decoration:  const BoxDecoration(
              gradient:RadialGradient(
                colors: [
                  Color(0xFF2D2D6D),
                  Color(0xFF090522) ,
                ],

              ),),
            child: Row(
              children: [
                SizedBox(height: 30,),
                Padding(
                  padding:  EdgeInsets.only(left: 150.0),
                  child: Container(
                    height: 380,
                    width: 380,
                    child: Image.asset("assets/circle.png",fit:BoxFit.fill,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 200,left: 400 ),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Welcome to ",style: GoogleFonts.poppins(fontSize: 40,color: Color(0xFFF5F5F5),letterSpacing: 2)),
                              Text("JSKFI ERP         ",style: GoogleFonts.poppins(fontSize: 40,letterSpacing: 2,fontWeight: FontWeight.bold,color:Color(0xFFF5F5F5) )),

                            ],
                          ),
                          Text("Manage all your accounts ",style: GoogleFonts.poppins(letterSpacing: 2,fontSize: 40,color: Color(0xFFF5F5F5))),
                          SizedBox(
                            height: 30,
                          ),

                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("User Name",style: GoogleFonts.poppins(fontSize: 20,color: Color(0xFFF5F5F5))),
                          ),
                          Container(
                              height: 40,
                              width: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Color(0xFFF5F5F5)),

                              ),
                              child:  Padding(
                                padding: const EdgeInsets.all(8.0),
                                child:  TextField(
                                  style: GoogleFonts.poppins(fontSize: 15,color: Color(0xFFF5F5F5)),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText:"Enter user name",labelStyle:TextStyle( color:Color(0xFFF5F5F5)),
                                    hintStyle: GoogleFonts.poppins(fontSize: 15,color: Color(0xFFF5F5F5))
                                  ),
                                ),
                              )),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Password",style: GoogleFonts.poppins(fontSize: 20,color: Color(0xFFF5F5F5))),
                          ),
                          Container(
                              height: 40,
                              width: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Color(0xFFF5F5F5)),

                              ),
                              child:  Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  style: GoogleFonts.poppins(fontSize: 15,color: Color(0xFFF5F5F5)),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText:"Enter the password",labelStyle:TextStyle( color:Color(0xFFF5F5F5)),
                                      hintStyle: GoogleFonts.poppins(fontSize: 15,color: Color(0xFFF5F5F5)),

                                  ),
                                ),
                              )),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            height: 40,
                            width: 300,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Color(0xFFF5F5F5)),
                                color: Color(0xFFF5F5F5)

                            ),
                            child:  TextButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Drawercus(),));
                            },child: Text("LOGIN", style: GoogleFonts.poppins(fontSize: 20,color: Colors.black),)),),
                          SizedBox(
                            height: 20,
                          ),


                        ]
                    ),
                  ),
                )

              ],
            ),
          ),
          Positioned(
              left: 100,
              top: 100,
              child: Image.asset("assets/1.png")),
          Positioned(
              left: 430,
              top: 100,
              child: Image.asset("assets/2.png")),
          Positioned(
              left: 500,
              top: 450,
              child: Image.asset("assets/3.png")),
          Positioned(
              left: 250,
              top: 600,
              child: Image.asset("assets/4.png")),
          Positioned(
              top: 500,
              left: 50,
              child: Image.asset("assets/5.png")),
        ],
      ),
    );
  }
}
