import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grodeliecom/src/widget/heading.dart';

import '../../constant.dart';
import '../../main.dart';

class CompleteOrder extends StatefulWidget {
  @override
  _CompleteOrderState createState() => _CompleteOrderState();
}

class _CompleteOrderState extends State<CompleteOrder> {
  var list = [
    {'name': "Red Potato", 'unit': "Rs. 50/kg", 'qty': "1", 'total': "Rs. 50"},
    {'name': "Red Potato", 'unit': "Rs. 50/kg", 'qty': "1", 'total': "Rs. 50"}
  ];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return WillPopScope(
      onWillPop: (){
        Navigator.of(context)
            .popUntil((route) => route.isFirst);
      },
      child: Scaffold(
        appBar: getappbar("Order Complete"),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 30.ssp),
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: MyApp.heightSpaceSize,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 30.ssp),
                  decoration: BoxDecoration(
                    color: MyApp.transBlue,
                    borderRadius: BorderRadius.circular(30.ssp)
                  ),
                  child: Column(
                    children: [
                      Text(
                        'CONGRATULATIONS',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: MyApp.subtitleTextSize,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w900,
                          fontFamily: Constants.SPOPPINS,
                          //    fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        'Order Placed Successfully on 24 Sept. 2020',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: MyApp.subtitleTextSize,
                          letterSpacing: 0.5,
                          fontFamily: Constants.SPOPPINS,
                          //    fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 30.ssp,),
                      Text(
                        'Order ID: #1224567789',
                        style: TextStyle(
                          color: Colors.green[900],
                          fontWeight: FontWeight.w900,
                          fontSize: MyApp.subtitleTextSize,
                          letterSpacing: 0.5,
                          fontFamily: Constants.SPOPPINS,
                          //    fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: MyApp.heightSpaceSize,),
                Heading("ORDER DETAIL", 3, false),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.only(left: 30.ssp),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey[500]
                      )
                    ),
                    child: DataTable(
                      columns: [
                        DataColumn(
                            label: Text(
                          'Items',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: MyApp.subtitleTextSize,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w900,
                            fontFamily: Constants.SPOPPINS,
                            //    fontWeight: FontWeight.bold
                          ),
                        )),
                        DataColumn(
                          label: Text(
                            'Quantity',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: MyApp.subtitleTextSize,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 0.5,
                              fontFamily: Constants.SPOPPINS,
                              //    fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        DataColumn(
                            label: Text(
                          'Total',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: MyApp.subtitleTextSize,
                            letterSpacing: 0.5,
                            fontFamily: Constants.SPOPPINS,
                            //    fontWeight: FontWeight.bold
                          ),
                        )),
                      ],
                      rows: list
                          .map((element) => DataRow(cells: <DataCell>[
                                DataCell(Text(element["name"],
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900,
                                    fontSize: MyApp.subtitleTextSize,
                                    letterSpacing: 0.5,
                                    fontFamily: Constants.POPPINS,
                                    //    fontWeight: FontWeight.bold
                                  ),)),
                                //Extracting from Map element the value
                                DataCell(Text(element["qty"])),
                                DataCell(Text(element["total"],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900,
                                      fontSize: MyApp.subtitleTextSize,
                                      letterSpacing: 0.5,
                                      fontFamily: Constants.POPPINS,
                                      //    fontWeight: FontWeight.bold
                                    ))),
                              ]))
                          .toList(),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'Net Total : Rs. 250',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: MyApp.subtitleTextSize,
                      letterSpacing: 0.5,
                      fontFamily: Constants.POPPINS,
                      //    fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
