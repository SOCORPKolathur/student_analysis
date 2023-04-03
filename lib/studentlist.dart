import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Student extends StatefulWidget {
  const Student({Key? key}) : super(key: key);

  @override
  State<Student> createState() => _StudentState();
}

class _StudentState extends State<Student> {
  String dropdownValue = '';
  bool var1=false;
  bool addstudent=false;
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return  addstudent==false? Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Row(
            children: [

              Padding(
                padding: EdgeInsets.only(right: height/3.79),
                child: Text("Students",style: GoogleFonts.poppins( color: Colors.white,fontSize: 25),),
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
            child: Column(
              children: [
                SizedBox(height: 50,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:65),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("FromDate",style: TextStyle( color: Color(0xFFF5F5F5),),),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Container(
                              height: 40,
                              width: 200,
                              decoration: BoxDecoration(
                                color: Color(0xFFE7E7E7).withOpacity(0.4),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.redAccent),),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    suffixIcon: Icon(Icons.calendar_month_sharp),
                                    hintText:"MM/DD/YYYY",hintStyle:TextStyle( color: Colors.black),

                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("ToDate",style: TextStyle( color: Color(0xFFF5F5F5),),),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Container(
                              height: 40,
                              width: 200,
                              decoration: BoxDecoration(
                                color: Color(0xFFE7E7E7).withOpacity(0.4),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.redAccent),),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    suffixIcon: Icon(Icons.calendar_month_sharp),
                                    border: InputBorder.none,
                                    hintText:"MM/DD/YYYY",hintStyle:TextStyle( color: Colors.black),

                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),



                Padding(
                  padding: const EdgeInsets.only(left: 1020),
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        addstudent = true;
                      });
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
                      child: TextButton(onPressed: () {  setState(() {
                        addstudent = true;
                      });
                      print("sdfgsd");  }, child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.add,color: Colors.white,),
                          Text("Add Students",style: GoogleFonts.poppins(color: Colors.white,),),
                        ],
                      ),),
                    ),
                  ),
                ),
                Divider(
                  height: 20,
                  color: Colors.white,
                  thickness: 2,
                  indent : 10,
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    SizedBox(width: 50,),
                    Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Color(0xFFE7E7E7).withOpacity(0.4),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.redAccent),

                      ),
                      child: TextField(
                        maxLines: 10,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText:"       All",labelStyle: TextStyle( color: Colors.black,),

                        ),
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      height: 40,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Color(0xFFE7E7E7).withOpacity(0.4),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.redAccent),

                      ),
                      child: TextField(
                        maxLines: 10,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText:"  Paid Students",labelStyle: TextStyle( color: Colors.black,),

                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 40,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Color(0xFFE7E7E7).withOpacity(0.4),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.redAccent),

                      ),
                      child: TextField(
                        maxLines: 10,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText:"  Due Students",labelStyle: TextStyle( color: Colors.black,),

                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  height: 400,
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("No",style: GoogleFonts.poppins( color: Colors.black,),),
                            Text("ID",style: GoogleFonts.poppins( color: Colors.black,),),
                            Text("Students Name",style: GoogleFonts.poppins( color: Colors.black,),),
                            Text("Mobile Number",style: GoogleFonts.poppins( color: Colors.black,),),
                            Text("Fees Status",style: GoogleFonts.poppins( color: Colors.black,),),
                            Text("Joined at",style: GoogleFonts.poppins( color: Colors.black,),),
                            Text("Actions",style: GoogleFonts.poppins( color: Colors.black,),),
                          ],
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
        )
      ],
    ):
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top:20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  GestureDetector(
                      onTap:(){
                        setState(() {
                          addstudent=false;
                        });
                        },
                      child: Icon(Icons.arrow_back,color: Colors.white,size: 25,)),
                  SizedBox(width: 10,),
                  Text("Add Students",style: TextStyle( color: Colors.white,fontSize: 25),),
                ],
              ),
              SizedBox(height: 15,),
              GestureDetector(
                onTap: (){
                  setState(() {
                    var1=true;
                  });
                },
                child: Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.redAccent)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Select Method",style:TextStyle(color: Color(0xFFF5F5F5)),),
                      // Step 1.

// Step 2.
                      DropdownButton<String>(
                        iconEnabledColor: Colors.white,
                        underline: Container(color: Colors.transparent),
                        // Step 3.
                        value: dropdownValue,
                        // Step 4.
                        items: <String>["","New ","one","two","three","four"]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(fontSize: 30),
                            ),
                          );
                        }).toList(),
                        // Step 5.
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                      ),
                    ],
                  ),

                ),
              )
            ],
          ),
        ),
        SizedBox(height: 20,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,

          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Student Name",style: TextStyle( color: Color(0xFFF5F5F5),),),
                SizedBox(height: 15,),
                Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Color(0xFFE7E7E7).withOpacity(0.4),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.redAccent),

                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText:"   prakash",labelStyle:TextStyle( color: Colors.black),

                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 20,),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Email:",style: TextStyle( color: Color(0xFFF5F5F5),),),
                SizedBox(height: 15,),
                Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Color(0xFFE7E7E7).withOpacity(0.4),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.redAccent),

                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText:"   prakash@gmail.com",labelStyle:TextStyle( color: Colors.black),

                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 20,),
            Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: Color(0xFFE7E7E7).withOpacity(0.4),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.redAccent),

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Material(
                      color: Colors.transparent,
                      elevation: 10,
                      child: Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Color(0xFFE7E7E7).withOpacity(0.8),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.redAccent),

                        ),
                        child: Center(child: Text("Choose photo",style:TextStyle(fontSize: 10),)),
                      ),
                    ),
                    Text("No File to choose",style: TextStyle( color: Colors.black,fontSize: 10),),
                  ],
                )
            ),

          ],
        ),
        SizedBox(height: 20,),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Phone Number",style: TextStyle( color: Color(0xFFF5F5F5),),),
                SizedBox(height: 15,),
                Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Color(0xFFE7E7E7).withOpacity(0.4),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.redAccent),

                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText:"   8428804908",labelStyle:TextStyle( color: Colors.black),

                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Branch Name",style: TextStyle( color: Color(0xFFF5F5F5),),),
                SizedBox(height: 15,),
                Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Color(0xFFE7E7E7).withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.redAccent)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Boys School",style:TextStyle(color: Colors.black),),
                      // Step 1.

// Step 2.
                      DropdownButton<String>(
                        iconEnabledColor: Colors.black,
                        underline: Container(color: Colors.transparent),
                        // Step 3.
                        value: dropdownValue,
                        // Step 4.
                        items: <String>["","New ","one","two","three","four"]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(fontSize: 30),
                            ),
                          );
                        }).toList(),
                        // Step 5.
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                      ),
                    ],
                  ),

                ),
              ],
            ),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Student Qualification",style: TextStyle( color: Color(0xFFF5F5F5),),),
                SizedBox(height: 15,),
                Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Color(0xFFE7E7E7).withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.redAccent)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Graduate",style:TextStyle(color: Colors.black),),
                      // Step 1.

// Step 2.
                      DropdownButton<String>(
                        iconEnabledColor: Colors.black,
                        underline: Container(color: Colors.transparent),
                        // Step 3.
                        value: dropdownValue,
                        // Step 4.
                        items: <String>["","New ","one","two","three","four"]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(

                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(fontSize: 30),
                            ),
                          );
                        }).toList(),
                        // Step 5.
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                      ),
                    ],
                  ),

                ),
              ],
            ),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Fees Paid For",style: TextStyle( color: Color(0xFFF5F5F5),),),
                SizedBox(height: 15,),
                Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Color(0xFFE7E7E7).withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.redAccent)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Admission Fees",style:TextStyle(color: Colors.black),),
                      // Step 1.

// Step 2.
                      DropdownButton<String>(
                        iconEnabledColor: Colors.black,
                        underline: Container(color: Colors.transparent),
                        // Step 3.
                        value: dropdownValue,
                        // Step 4.
                        items: <String>["","New ","one","two","three","four"]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(fontSize: 30,),),
                          );
                        }).toList(),
                        // Step 5.
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                      ),
                    ],
                  ),

                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 20,),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Gender",style: TextStyle( color: Color(0xFFF5F5F5),),),
                SizedBox(height: 15,),
                Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Color(0xFFE7E7E7).withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.redAccent)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Male",style:TextStyle(color: Colors.black),),
                      // Step 1.

// Step 2.
                      DropdownButton<String>(
                        iconEnabledColor: Colors.black,
                        underline: Container(color: Colors.transparent),
                        // Step 3.
                        value: dropdownValue,
                        // Step 4.
                        items: <String>["","New ","one","two","three","four"]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(fontSize: 30,),),
                          );
                        }).toList(),
                        // Step 5.
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                      ),
                    ],
                  ),

                ),
              ],
            ),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Date Of Birth",style: TextStyle( color: Color(0xFFF5F5F5),),),
                SizedBox(height: 15,),
                Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Color(0xFFE7E7E7).withOpacity(0.4),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.redAccent),

                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText:"   16/02/1996",hintStyle:TextStyle( color: Colors.black),

                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("CLASS TIMING",style: TextStyle( color: Color(0xFFF5F5F5),),),
                SizedBox(height: 15,),
                Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Color(0xFFE7E7E7).withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.redAccent)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("10.30 AM",style:TextStyle(color: Colors.black),),
                      // Step 1.

// Step 2.
                      DropdownButton<String>(
                        iconEnabledColor: Colors.black,
                        underline: Container(color: Colors.transparent),
                        // Step 3.
                        value: dropdownValue,
                        // Step 4.
                        items: <String>["","New ","one","two","three","four"]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(fontSize: 30,),),
                          );
                        }).toList(),
                        // Step 5.
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                      ),
                    ],
                  ),

                ),
              ],
            ),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Current grade",style: TextStyle( color: Color(0xFFF5F5F5),),),
                SizedBox(height: 15,),
                Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Color(0xFFE7E7E7).withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.redAccent)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("White",style:TextStyle(color: Colors.black),),
                      // Step 1.

// Step 2.
                      DropdownButton<String>(
                        iconEnabledColor: Colors.black,
                        underline: Container(color: Colors.transparent),
                        // Step 3.
                        value: dropdownValue,
                        // Step 4.
                        items: <String>["","New ","one","two","three","four"]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(fontSize: 30,),),
                          );
                        }).toList(),
                        // Step 5.
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                      ),
                    ],
                  ),

                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 20,),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Father Name",style: TextStyle( color: Color(0xFFF5F5F5),),),
                SizedBox(height: 15,),
                Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Color(0xFFE7E7E7).withOpacity(0.4),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.redAccent),

                  ),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText:"     12/03/2023",hintStyle:TextStyle( color: Colors.black),

                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Mother Name",style: TextStyle( color: Color(0xFFF5F5F5),),),
                SizedBox(height: 15,),
                Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Color(0xFFE7E7E7).withOpacity(0.4),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.redAccent),

                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText:"     12/03/2023",labelStyle:TextStyle( color: Colors.black),

                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Monthly Fees",style: TextStyle( color: Color(0xFFF5F5F5),),),
                SizedBox(height: 15,),
                Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Color(0xFFE7E7E7).withOpacity(0.4),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.redAccent),

                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText:"     8000",hintStyle:TextStyle( color: Colors.black),

                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("City",style: TextStyle( color: Color(0xFFF5F5F5),),),
                SizedBox(height: 15,),
                Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Color(0xFFE7E7E7).withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.redAccent)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("     chennai",style:TextStyle(color: Colors.black),),
                      // Step 1.

// Step 2.
                      DropdownButton<String>(
                        iconEnabledColor: Colors.black,
                        underline: Container(color: Colors.transparent),
                        // Step 3.
                        value: dropdownValue,
                        // Step 4.
                        items: <String>["","New ","one","two","three","four"]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(fontSize: 30,),),
                          );
                        }).toList(),
                        // Step 5.
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                      ),
                    ],
                  ),

                ),
              ],
            ),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("State",style: TextStyle( color: Color(0xFFF5F5F5),),),
                SizedBox(height: 15,),
                Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Color(0xFFE7E7E7).withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.redAccent)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("     Tamil Nadu",style:TextStyle(color: Colors.black),),
                      // Step 1.

// Step 2.
                      DropdownButton<String>(
                        iconEnabledColor: Colors.black,
                        underline: Container(color: Colors.transparent),
                        // Step 3.
                        value: dropdownValue,
                        // Step 4.
                        items: <String>["","New ","one","two","three","four"]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(fontSize: 30,),),
                          );
                        }).toList(),
                        // Step 5.
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                      ),
                    ],
                  ),

                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 20,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Address",style: TextStyle( color: Color(0xFFF5F5F5),),),
            SizedBox(height: 15,),
            Container(
              height: 60,
              width: 400,
              decoration: BoxDecoration(
                color: Color(0xFFE7E7E7).withOpacity(0.4),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.redAccent),

              ),
              child: TextField(
                maxLines: 10,
                decoration: InputDecoration(
                  border: InputBorder.none,

                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(right: 140),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Cancel",style: TextStyle( color: Color(0xFFF5F5F5),),),
              SizedBox(width: 30,),
              Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.redAccent),

                ),
                child: Center(
                  child: Text("Add Student",style: TextStyle( color: Color(0xFFF5F5F5),

                  ),
              ),
                ),
              )
            ],
          ),
        )

      ],
    );
  }
}
