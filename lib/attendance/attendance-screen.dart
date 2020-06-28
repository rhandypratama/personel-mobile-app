import 'package:flutter/material.dart';
import 'package:personel/utils/widget-model.dart';

class AttendanceScreen extends StatefulWidget {
  @override
  _AttendanceScreenState createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[        
        SizedBox.expand(
          child: Container(
            // color: Colors.blueAccent,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/2.jpg"),
                fit: BoxFit.cover,
              ),
            ),

          ) 
        ),
        _attandancePage()
      ],
    );
  }
}

DraggableScrollableSheet _attandancePage() {
  return DraggableScrollableSheet(
    initialChildSize: 0.55,
    minChildSize: 0.55,
    maxChildSize: 0.87,
    builder: (BuildContext context, ScrollController scrollController) {
      return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20)
          )
        ),
        child: SingleChildScrollView(
          controller: scrollController,
            child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 10),
                alignment: Alignment(0.0, 0),
                height: 8.0,
                // color: Colors.black26, 
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    // side: BorderSide(color: Colors.red)
                  ),
                  color: Colors.black12,
                  textColor: Colors.red,
                  padding: EdgeInsets.all(0.0),
                  onPressed: () {}, 
                  child: null,
                )
              ),
                        
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(blurRadius: 2.0, color: Colors.grey)
                    ]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: dynamicText(
                        '09:00 AM - 06:00 PM',
                        fontSize: 29.0),
                    ),        
                    Container(
                      padding: EdgeInsets.only(top: 5, bottom: 10),
                      child: dynamicText(
                        'WORKING HOURS',
                        fontFamily: 'Quicksand',
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Divider(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.pin_drop, color: Colors.green),
                          SizedBox(width: 20,),
                          Expanded(
                            child: dynamicText(
                              "Jalan Tebet Barat 1 No. 2 RT/RW 001/002 Tebet - Jakarta Selatan - DKI Jakarta - Indonesia",
                              overflow: TextOverflow.fade,
                              color: Colors.black54,
                              fontSize: 14
                          ))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Divider(),
                    ),

                    Container(
                      padding: EdgeInsets.only(top: 0, bottom: 20),
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          
                          ButtonBar(
                            alignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              RaisedButton(
                                onPressed: (){},
                                child: dynamicText("Check In", fontSize: 20),
                                color: Colors.blue,
                                elevation: 0,
                                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 14),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                ),
                              ),
                              SizedBox(width: 2),
                              RaisedButton(
                                onPressed: () {},
                                child: dynamicText("Check Out", fontSize: 20),
                                color: Colors.redAccent,
                                elevation: 0,
                                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 14),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                ),
                              ),
                            ],
                          ),
                          
                        ],
                      ),
                    ),

                  ]
                ),
                ),
              ),

              Container(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10, bottom: 20),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          dynamicText(
                            'TODAY ATTENDANCE ACTIVITY',
                            color: Colors.grey,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                          ),
                          dynamicText(
                            'VIEW ALL',
                            color: Colors.green,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                          ), 
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.access_time, size: 30, color: Colors.blue,),
                          SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  dynamicText(
                                    'CHECK IN',
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                  ),
                                  dynamicText(
                                    ' - 20/06/2020 09:34 AM',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              Container(
                                width: MediaQuery.of(context).size.width - 100,
                                child: dynamicText(
                                  'Jalan Tebet Barat 1 No. 2 RT/RW 001/002 Tebet - Jakarta Selatan - DKI Jakarta - Indonesia',
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 12.0,
                                  overflow: TextOverflow.fade
                                )
                              ),
                            ],
                          ),
                           
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.access_time, size: 30, color: Colors.redAccent,),
                          SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  dynamicText(
                                    'CHECK OUT',
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                  ),
                                  dynamicText(
                                    ' - 20/06/2020 09:34 AM',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              Container(
                                width: MediaQuery.of(context).size.width - 100,
                                child: dynamicText(
                                  'Jalan Tebet Barat 1 No. 2 RT/RW 001/002 Tebet - Jakarta Selatan - DKI Jakarta - Indonesia',
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 12.0,
                                  overflow: TextOverflow.fade
                                )
                              ),
                            ],
                          ),
                           
                        ],
                      ),
                    ),

                  ],
                )
              ),

              // Container(
              //   padding: const EdgeInsets.all(20.0),
              //   child: ListView.builder(
              //     itemCount: 3,
              //     itemBuilder: (BuildContext context, int index) { 
              //       return Card(
              //         child: dynamicText("$index"),
              //       );
              //     },
              //   ),
              // ),

            ],
          ),
        ),
      );
    }
  );
}