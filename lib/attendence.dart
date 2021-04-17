import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Attendence extends StatefulWidget {
  @override
  _AttendenceState createState() => _AttendenceState();
}

class _AttendenceState extends State<Attendence> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(children: [
            
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.settings),
                          SizedBox(
                            height: 6.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35.0),
                            child: Text(
                              'Profile',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 25.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        child: Column(
                          children: [
                            Container(height: 100,
                              width: 100,
                              child: Image(
                                image: NetworkImage("https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg.jpg"),
                              ),
                            ),
                            SizedBox(
                              height: 2.0,
                            ),
                            Text(
                              'Update',
                              style: GoogleFonts.poppins(
                                  fontSize: 12.0, color: Colors.black45),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ]),
          SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left:10, right:10, top: 2.0),
                child:Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 2),
                                  color: Colors.black45,
                                  blurRadius: 10.0,
                                )
                              ]),
                          height: MediaQuery.of(context).size.height,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          'Name:',
                                          style: GoogleFonts.poppins(
                                              fontSize: 20.0,
                                              color: Colors.blue,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),

                                      Expanded(
                                        flex: 2,
                                        child: Text("Mr. Kumar",
                                          style: GoogleFonts.poppins(
                                              fontSize: 20.0,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          'Address:',
                                          style: GoogleFonts.poppins(
                                              fontSize: 20.0,
                                              color: Colors.blue,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),

                                      Expanded(
                                        flex: 2,
                                        child: Text

                                          ("Kolkata",
                                          style: GoogleFonts.poppins(
                                              fontSize: 20.0,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          'Phone:',
                                          style: GoogleFonts.poppins(
                                              fontSize: 20.0,
                                              color: Colors.blue,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),

                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          //patient["Address"],
                                         "1234567890",
                                          style: GoogleFonts.poppins(
                                              fontSize: 20.0,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),

                                  Row(
                                    children: [
                                      Expanded(flex: 1,
                                        child: Text(
                                          'Email:',
                                          style: GoogleFonts.poppins(
                                              fontSize: 20.0,
                                              color: Colors.blue,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),

                                      Expanded(
                                        flex: 2,
                                        child: Text(

                                         "example@gmail.com" ,
                                          style: GoogleFonts.poppins(
                                              fontSize: 20.0,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(flex: 1,
                                        child: Text(
                                          'Salary:',
                                          style: GoogleFonts.poppins(
                                              fontSize: 20.0,
                                              color: Colors.blue,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),

                                      Expanded( flex: 2,
                                        child: Text(
                                          //patient["Address"],
                                         "50,000",
                                          style: GoogleFonts.poppins(
                                              fontSize: 20.0,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Row(
                                    children: [
                                      Expanded( flex: 1,
                                        child: Text(
                                          'Holidays left:',
                                          style: GoogleFonts.poppins(
                                              fontSize: 20.0,
                                              color: Colors.blue,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),

                                      Expanded( flex: 2,
                                        child: Text(
                                          //patient["Address"],
                                         "5",
                                          style: GoogleFonts.poppins(
                                              fontSize: 20.0,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20.0),
                                  Row(
                                    children: [
                                      Expanded( flex: 1,
                                        child: Text(
                                          'Attendence:',
                                          style: GoogleFonts.poppins(
                                              fontSize: 20.0,
                                              color: Colors.blue,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),

                                      Expanded( flex: 2,
                                        child: Text(
                                          //patient["Address"],
                                          "85%",
                                          style: GoogleFonts.poppins(
                                              fontSize: 20.0,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20.0),


                                  Center(
                                    child: Container(
                                      height: .75 * (MediaQuery.of(context).size.height / 12),
                                      width: 6.1 * (MediaQuery.of(context).size.width / 10),
                                      //margin: EdgeInsets.only(bottom: 20),
                                      child: RaisedButton(
                                        elevation: 1.0,
                                        color:Colors.blue,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30.0),
                                          side: BorderSide(color: Colors.blue),
                                        ),
                                        onPressed: () {

                                        },
                                        child: InkWell(
                                          onTap: ()  {

                                          },
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Icon(Icons.logout),
                                                SizedBox(width: 10,),
                                                Text(
                                                  'Log out',
                                                  style: TextStyle(fontSize: 20, color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        )
    )
    ),
          )
    ]
                          )
    );

  }
}
