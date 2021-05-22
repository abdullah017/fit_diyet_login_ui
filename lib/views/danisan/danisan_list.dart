import 'package:doctor_consultant_mobile_app/models/danisan_model/danisan_model.dart';
import 'package:doctor_consultant_mobile_app/models/diyetisyen_model/doctor.dart';
import 'package:doctor_consultant_mobile_app/views/danisan/danisan_detail.dart';
import 'package:doctor_consultant_mobile_app/widgets/search_box.dart';
import 'package:flutter/material.dart';

class DanisanListView extends StatefulWidget {
  @override
  _DanisanListViewState createState() => _DanisanListViewState();
}

class _DanisanListViewState extends State<DanisanListView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: 20.0),
              SearchBox(hintText: 'Search doctors'),
              SizedBox(height: 20.0),
              Expanded(
                child: ListView.builder(
                  itemCount: doctorList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      elevation: 5,
                      margin: EdgeInsets.only(
                          left: 20.0, right: 20.0, bottom: 20.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => DanisanListViewDetail(
                                danisanModel: danisanList[index],
                              ),
                            ),
                          );
                        },
                        child: Container(
                          width: 150.0,
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(14.0),
                                child: Image.asset(
                                  '${danisanList[index].image}',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 12.0),
                              Text(
                                '${danisanList[index].name}',
                                overflow: TextOverflow.clip,
                                maxLines: 1,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 6.0),
                              Text(
                                '${danisanList[index].age}',
                                overflow: TextOverflow.clip,
                                maxLines: 1,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              // Row(
                              //   mainAxisAlignment:
                              //       MainAxisAlignment.spaceEvenly,
                              //   children: [
                              //     RatingBarIndicator(
                              //       rating: doctorList[index].rating,
                              //       itemBuilder: (context, index) => Icon(
                              //         Icons.star,
                              //         color: Colors.amber,
                              //       ),
                              //       itemCount: 5,
                              //       itemSize: 50.0,
                              //       direction: Axis.horizontal,
                              //     ),
                              //   ],
                              // )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
    // return Material(
    //   child: Container(
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: <Widget>[
    //         SizedBox(height: 45.0),
    //         SearchBox(
    //           hintText: "Search doctor",
    //         ),
    //         SizedBox(height: 25.0),
    //         Expanded(
    //           child: GestureDetector(
    //             onTap: () {
    //               Navigator.push(
    //                   context,
    //                   MaterialPageRoute(
    //                       builder: (context) => DoctorListViewDetail()));
    //             },
    //             child: Container(
    //               child: ListView.builder(
    //                 itemCount: doctorList.length,
    //                 physics: ScrollPhysics(),
    //                 scrollDirection: Axis.vertical,
    //                 shrinkWrap: true,
    //                 itemBuilder: (context, index) {
    //                   var doctor = doctorList[index];
    //                   return Card(
    //                     margin: EdgeInsets.only(left: 18.0, bottom: 2.0),
    //                     shape: RoundedRectangleBorder(
    //                       borderRadius: BorderRadius.circular(12.0),
    //                     ),
    //                     child: Container(
    //                       width: 150.0,
    //                       padding: EdgeInsets.all(8.0),
    //                       child: Column(
    //                         children: <Widget>[
    //                           ClipRRect(
    //                             borderRadius: BorderRadius.circular(14.0),
    //                             child: Image.asset(
    //                               doctor.image,
    //                               fit: BoxFit.cover,
    //                             ),
    //                           ),
    //                           SizedBox(height: 12.0),
    //                           Text(
    //                             doctor.name,
    //                             overflow: TextOverflow.clip,
    //                             maxLines: 1,
    //                             textAlign: TextAlign.center,
    //                             style: TextStyle(
    //                               color: Colors.black,
    //                               fontWeight: FontWeight.bold,
    //                             ),
    //                           ),
    //                           SizedBox(height: 6.0),
    //                           Text(
    //                             doctor.specialist,
    //                             overflow: TextOverflow.clip,
    //                             maxLines: 1,
    //                             textAlign: TextAlign.center,
    //                             style: TextStyle(
    //                               color: Colors.black,
    //                               fontWeight: FontWeight.bold,
    //                             ),
    //                           ),
    //                           Row(
    //                             mainAxisAlignment:
    //                                 MainAxisAlignment.spaceEvenly,
    //                             children: [
    //                               RatingBarIndicator(
    //                                 rating: doctor.rating,
    //                                 itemBuilder: (context, index) => Icon(
    //                                   Icons.star,
    //                                   color: Colors.amber,
    //                                 ),
    //                                 itemCount: 5,
    //                                 itemSize: 50.0,
    //                                 direction: Axis.horizontal,
    //                               ),
    //                             ],
    //                           )
    //                         ],
    //                       ),
    //                     ),
    //                   );
    //                 },
    //               ),
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
