import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Column(
      children: [
        Stack(
          children: [
            Padding(
              padding:  EdgeInsets.only(top: 170,left: 380),
              child: Container(
                width: 450,
                height:450 ,
                child: Image.asset("Assets/back.png",fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                children: [

                  Padding(
                    padding: EdgeInsets.only(right: height/3.79),
                    child: Text("Dashboard",style: GoogleFonts.poppins( color: Colors.white,fontSize: 25),),
                  ),
                  const SizedBox(
                    width: 510,
                  ),

                  SizedBox(
                    width: 20,
                  ),
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
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Row(

                children: [

                  Container(
                    height: 280,
                    width: 300,
                    decoration: BoxDecoration(
                        color:Color(0xFFE7E7E7).withOpacity(0.4),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.redAccent)
                    ),
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:  [
                        Padding(
                          padding: EdgeInsets.only(right:120),
                          child: Text("Total Students",style: TextStyle(
                              fontSize: 20,
                              color:Color(0xFFF5F5F5)
                          ),),
                        ),
                        Center(
                            child: CircularPercentIndicator(
                                radius: 55,
                                lineWidth: 13.0,
                                percent: 0.55,
                                center: new Text("80", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                                linearGradient: LinearGradient(begin: Alignment.topRight,end:Alignment.bottomLeft, colors: <Color>    [Colors.yellowAccent,Colors.yellow]),rotateLinearGradient: true, circularStrokeCap: CircularStrokeCap.round)
                        ),
                        Text("View List",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),)
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 150,
                  ),
                  Container(
                    height: 280,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Color(0xFFE7E7E7).withOpacity(0.4),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.redAccent)
                    ),
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:  [
                        Padding(
                          padding: EdgeInsets.only(right:100),
                          child: Text("Fees Paid Students",style: TextStyle(fontSize: 20,
                              color:Color(0xFFF5F5F5)
                          ),),
                        ),
                        Center(
                          child: CircularPercentIndicator(
                              radius: 55,
                              lineWidth: 13.0,
                              percent: 0.6,
                              center: new Text("63", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                              linearGradient: LinearGradient(begin: Alignment.topRight,end:Alignment.bottomLeft, colors: <Color>    [Colors.green,Colors.green]),rotateLinearGradient: true, circularStrokeCap: CircularStrokeCap.round),
                        ),
                        Text("View List",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),)
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 250,
                  ),
                  Container(
                    height: 280,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Color(0xFFE7E7E7).withOpacity(0.4),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.redAccent)
                    ),
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:  [
                        Padding(
                          padding: EdgeInsets.only(right:150),
                          child: Text("Due Students",style: TextStyle(fontSize: 20,
                              color:Color(0xFFF5F5F5)
                          ),),
                        ),
                        Center(
                          child: CircularPercentIndicator(
                              radius: 55,
                              lineWidth: 13.0,
                              percent: 0.75,
                              center: new Text("17", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                              linearGradient: LinearGradient(begin: Alignment.topRight,end:Alignment.bottomLeft, colors: <Color>    [Colors.red,Colors.redAccent]),rotateLinearGradient: true, circularStrokeCap: CircularStrokeCap.round),
                        ),
                        Text("View List",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 385),
              child: Container(
                width: 1250,
                height: 350,
                decoration: BoxDecoration(
                    color: Color(0xFFE7E7E7).withOpacity(0.4),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.redAccent)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 200.0),
                            child: Text("Current Balance",style: TextStyle(fontSize:20,color: Color(0xFFF5F5F5),),),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 220),
                            child: Text("₹ 3,565.86",style: TextStyle(color: Color(0xFFF5F5F5),fontWeight: FontWeight.bold,fontSize: 30),),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Text("Bank Balance",style: TextStyle(color:Color(0xFFF5F5F5)),),
                              const SizedBox(
                                width: 50,
                              ),
                              Container(
                                height: 30,
                                width: 250,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xFFF5F5F5)),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText:"  ₹12,21452 ",labelStyle:TextStyle( color:Color(0xFFF5F5F5)),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Text("Cash In Hand",style: TextStyle(color:Color(0xFFF5F5F5)),),
                              const SizedBox(
                                width: 50,
                              ),
                              Container(
                                height: 30,
                                width: 250,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xFFF5F5F5)),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText:"  ₹20,0000 ",labelStyle:TextStyle( color:Color(0xFFF5F5F5)),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 30,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Colors.redAccent)
                                ),
                                child: Center(child: Text("Add Cash",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w600),)),
                              ),
                            ],
                          )

                        ],
                      ),
                      SizedBox(width: width/7.28532,),
                      Material(
                        color: Colors.transparent,
                        elevation: 10,
                        child: Container(
                          width: width/3.64266,
                          height: height/2.92,
                          decoration: BoxDecoration(
                              color: Color(0xFFE7E7E7).withOpacity(0.4),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.redAccent)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 14.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children:  [
                                Padding(
                                  padding: EdgeInsets.only(right:20,top: 30),
                                  child: Text("Available to be Received",style: TextStyle(color:Color(0xFFF5F5F5),fontSize: 20,fontWeight: FontWeight.bold ),),
                                ),
                                SizedBox(
                                  height: height/43.8,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: width/6.0711),
                                  child: Text("₹ 5,785",style: TextStyle(fontSize: 20,color: Color(0xFFF5F5F5)),),
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                Padding(
                                  padding:  EdgeInsets.only(right:width/6.0711),
                                  child: Text("Amount to be Paid",style: TextStyle(color: Color(0xFFF5F5F5),fontSize: 20,fontWeight: FontWeight.bold)),
                                ),
                                SizedBox(
                                  height:height/43.8,
                                ),
                                Row(

                                  children: [

                                    Text("₹ 5,785",style: TextStyle(fontSize: 20,color: Color(0xFFF5F5F5))),
                                    SizedBox(
                                      width: width/91.0665,
                                    ),
                                    Text("Date 08/23",style: TextStyle(color: Color(0xFFF5F5F5),fontSize: 20,)),
                                    SizedBox(
                                      width: width/91.0665,
                                    ),
                                    Container(
                                      height: height/29.2,
                                      width: width/18.2133,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(20),
                                          border: Border.all(color: Colors.redAccent)
                                      ),
                                      child: const Center(child: Text("View Pays")),
                                    )
                                  ],
                                ),

                              ],
                            ),
                          ),

                        ),
                      )
                    ],
                  ),
                ),
              ),
            )

          ],
        ),

      ],
    );

  }
}
