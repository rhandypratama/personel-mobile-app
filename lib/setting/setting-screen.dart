import 'package:flutter/material.dart';
import 'package:personel/utils/widget-model.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[   
        SizedBox.expand(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/2.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ) 
        ),
        _settingPage()
      ],
    );
  }
}

DraggableScrollableSheet _settingPage() {
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
                margin: EdgeInsets.only(top: 10, bottom: 10),
                alignment: Alignment(0.0, 0),
                height: 8.0,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  color: Colors.black12,
                  textColor: Colors.red,
                  padding: EdgeInsets.all(0.0),
                  onPressed: () {}, 
                  child: null,
                )
              ),

              SingleChildScrollView(
                // controller: scrollController,
                child: Container(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 10),
                        child: dynamicText("Account", fontSize: 30, fontWeight: FontWeight.bold)
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20, bottom: 10, left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Stack(
                              children: <Widget>[
                                Container(
                                  height: 60.0,
                                  width: 60.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.0),
                                    color: Colors.green,
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'
                                      )
                                    )
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 40.0),
                                  height: 20.0,
                                  width: 20.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.0),
                                    color: Colors.amber,
                                    border: Border.all(
                                      color: Colors.white,
                                      style: BorderStyle.solid,
                                      width: 2.0
                                    )
                                  ),
                                )
                              ]
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: dynamicText("Alexander Pirlo Taylor", fontSize: 22)
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                                  child: dynamicText("CHIEF EXECUTIVE OFFICER", fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black45)
                                ),
                              ],
                            ),
                          ],
                        ),
                        
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 10),
                        child: dynamicText("My Info", fontSize: 20, fontWeight: FontWeight.bold)
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20, bottom: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(right: 20),
                                  child: Icon(Icons.person, color: Colors.redAccent),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(0),
                                  child: dynamicText("Personal", fontSize: 16)
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(0),
                              child: Icon(Icons.arrow_forward_ios, size: 16,),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Divider(),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, left: 20, right: 20, bottom: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(right: 20),
                                  child: Icon(Icons.group, color: Colors.redAccent),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(0),
                                  child: dynamicText("Employment", fontSize: 16)
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(0),
                              child: Icon(Icons.arrow_forward_ios, size: 16,),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Divider(),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, left: 20, right: 20, bottom: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(right: 20),
                                  child: Icon(Icons.local_hospital, color: Colors.redAccent),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(0),
                                  child: dynamicText("Emergency Contact", fontSize: 16)
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(0),
                              child: Icon(Icons.arrow_forward_ios, size: 16,),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Divider(),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, left: 20, right: 20, bottom: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(right: 20),
                                  child: Icon(Icons.person_pin, color: Colors.redAccent),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(0),
                                  child: dynamicText("Family", fontSize: 16)
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(0),
                              child: Icon(Icons.arrow_forward_ios, size: 16,),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Divider(),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, left: 20, right: 20, bottom: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(right: 20),
                                  child: Icon(Icons.school, color: Colors.redAccent),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(0),
                                  child: dynamicText("Education", fontSize: 16)
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(0),
                              child: Icon(Icons.arrow_forward_ios, size: 16,),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Divider(),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, left: 20, right: 20, bottom: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(right: 20),
                                  child: Icon(Icons.account_balance_wallet, color: Colors.redAccent),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(0),
                                  child: dynamicText("Payroll", fontSize: 16)
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(0),
                              child: Icon(Icons.arrow_forward_ios, size: 16,),
                            ),
                          ],
                        ),
                      ),
                      
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 20),
                        child: dynamicText("Settings", fontSize: 20, fontWeight: FontWeight.bold)
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20, bottom: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(right: 20),
                                  child: Icon(Icons.lock_outline, color: Colors.redAccent),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(0),
                                  child: dynamicText("Change Password", fontSize: 16)
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(0),
                              child: Icon(Icons.arrow_forward_ios, size: 16,),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                )
              ),
            ],
          ),
        ),
      );
    }
  );
}