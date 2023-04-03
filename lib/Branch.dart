import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Branchs extends StatefulWidget {
  const Branchs({Key? key}) : super(key: key);

  @override
  State<Branchs> createState() => _BranchsState();
}

class _BranchsState extends State<Branchs> {
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Row(
            children: [

              Padding(
                padding: EdgeInsets.only(right: height/3.79),
                child: Text("Branch",style: GoogleFonts.poppins( color: Colors.white,fontSize: 25),),
              ),
              SizedBox(width: 530,),
              Padding(
                padding: const EdgeInsets.only(left:20,),
                child: Container(
                    height: 45,
                    width: 400,
                    decoration:BoxDecoration(
                        color: Color(0xFFE7E7E7).withOpacity(0.4),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.redAccent)
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search,color: Color(0xFFF5F5F5),),
                          hintText: "Search",hintStyle: TextStyle(color:Color(0xFFF5F5F5))
                      ),
                    )),
              ),
              SizedBox(width: 20,),
              Icon(Icons.notification_add,size: 20,color: Colors.white,),
              SizedBox(width: 50,),
              CircleAvatar(
                radius: 20,

              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Container(
            height: 670,
            width: 1400,
            decoration: BoxDecoration(
              color: Color(0xFFE7E7E7).withOpacity(0.4),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.redAccent),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Current Branch",style: GoogleFonts.poppins( color: Colors.white,fontSize: 25),),
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: GestureDetector(
                            onTap: (){

                              print("sdfgsd");
                            },
                            child: Container(
                              height: 40,
                              width: 200,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.redAccent),

                              ),
                              child: TextButton(onPressed: () {
                                print("sdfgsd");  }, child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [

                                  Icon(Icons.add,color: Colors.white,),
                                  Text("Add Branch",style: GoogleFonts.poppins(color: Colors.white,),),
                                ],
                              ),),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20,),
                  Container(
                    height: 550,
                    width: 1350,
                    decoration: BoxDecoration(
                      color: Color(0xFFE7E7E7).withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.redAccent),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 25,),
                        Container(
                          height: 50,
                          width: 1300,
                          decoration: BoxDecoration(
                            color: Color(0xFFE7E7E7).withOpacity(0.4),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.redAccent),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 100.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("No",style: GoogleFonts.poppins( color: Colors.black,),),
                                Text("ID",style: GoogleFonts.poppins( color: Colors.black,),),
                                Text("Date Started",style: GoogleFonts.poppins( color: Colors.black,),),
                                Text("Branch Name",style: GoogleFonts.poppins( color: Colors.black,),),
                                Text("Location",style: GoogleFonts.poppins( color: Colors.black,),),
                                Text("Status",style: GoogleFonts.poppins( color: Colors.black,),),
                                Text("Actions",style: GoogleFonts.poppins( color: Colors.black,),),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 50,
                            width: 1300,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color(0xFFE7E7E7).withOpacity(0.4),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.redAccent),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("1",style: GoogleFonts.poppins( color: Colors.black,),),
                                Text("#174797",style: GoogleFonts.poppins( color: Colors.black,),),
                                Text("Emma thosman",style: GoogleFonts.poppins( color: Colors.black,),),
                                Text("+918428804305",style: GoogleFonts.poppins( color: Colors.black,),),
                                Text("oct 06,2022,3.52 PM",style: GoogleFonts.poppins( color: Colors.black,),),
                                Container(
                                    height: 20,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.redAccent),
                                    ),
                                    child: Center(child: Text("Paid",style: GoogleFonts.poppins( color: Colors.black,),))),
                                Container(
                                    height: 20,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE7E7E7).withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.redAccent),
                                    ),
                                    child: Center(child: Row(
                                      children: [
                                        Text(".",style: GoogleFonts.poppins( color: Colors.greenAccent,fontSize: 30),),
                                        Text("View",style: GoogleFonts.poppins( color: Colors.black,),),
                                      ],
                                    ))),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 50,
                            width: 1300,
                            decoration: BoxDecoration(
                              color: Color(0xFFE7E7E7).withOpacity(0.4),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.redAccent),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("1",style: GoogleFonts.poppins( color: Colors.black,),),
                                Text("#174797",style: GoogleFonts.poppins( color: Colors.black,),),
                                Text("Emma thosman",style: GoogleFonts.poppins( color: Colors.black,),),
                                Text("+918428804305",style: GoogleFonts.poppins( color: Colors.black,),),
                                Text("oct 06,2022,3.52 PM",style: GoogleFonts.poppins( color: Colors.black,),),
                                Container(
                                    height: 20,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.redAccent),
                                    ),
                                    child: Center(child: Text("Due",style: GoogleFonts.poppins( color: Colors.black,),))),
                                Container(
                                    height: 20,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE7E7E7).withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.redAccent),
                                    ),
                                    child: Center(child: Row(
                                      children: [
                                        Text(".",style: GoogleFonts.poppins( color: Colors.greenAccent,fontSize: 30),),
                                        Text("View",style: GoogleFonts.poppins( color: Colors.black,),),
                                      ],
                                    ))),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 50,
                            width: 1300,
                            decoration: BoxDecoration(
                              color: Color(0xFFE7E7E7).withOpacity(0.4),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.redAccent),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("1",style: GoogleFonts.poppins( color: Colors.black,),),
                                Text("#174797",style: GoogleFonts.poppins( color: Colors.black,),),
                                Text("Emma thosman",style: GoogleFonts.poppins( color: Colors.black,),),
                                Text("+918428804305",style: GoogleFonts.poppins( color: Colors.black,),),
                                Text("oct 06,2022,3.52 PM",style: GoogleFonts.poppins( color: Colors.black,),),
                                Container(
                                    height: 20,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.redAccent),
                                    ),
                                    child: Center(child: Text("Paid",style: GoogleFonts.poppins( color: Colors.black,),))),
                                Container(
                                    height: 20,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE7E7E7).withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.redAccent),
                                    ),
                                    child: Center(child: Row(
                                      children: [
                                        Text(".",style: GoogleFonts.poppins( color: Colors.greenAccent,fontSize: 30),),
                                        Text("View",style: GoogleFonts.poppins( color: Colors.black,),),
                                      ],
                                    ))),
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

