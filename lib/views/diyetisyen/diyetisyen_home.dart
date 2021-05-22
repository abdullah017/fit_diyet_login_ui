import 'package:doctor_consultant_mobile_app/models/danisan_model/danisan_model.dart';
import 'package:doctor_consultant_mobile_app/views/danisan/danisan_detail.dart';
import 'package:doctor_consultant_mobile_app/views/danisan/danisan_list.dart';

import 'package:doctor_consultant_mobile_app/widgets/appoinment_card.dart';

import 'package:doctor_consultant_mobile_app/widgets/danisan_card.dart';

import 'package:doctor_consultant_mobile_app/widgets/search_box.dart';

import 'package:flutter/material.dart';

class DiyetisyenHomeView extends StatefulWidget {
  @override
  _DiyetisyenHomeViewState createState() => _DiyetisyenHomeViewState();
}

class _DiyetisyenHomeViewState extends State<DiyetisyenHomeView> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: Text('Profilim'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Çıkış'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(
            builder: (context) => IconButton(
              icon: Icon(
                Icons.menu_rounded,
                color: Colors.green,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          title: Center(
            child:
                Text(" FİT DİYET APP ", style: TextStyle(color: Colors.green)),
          ),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 45.0),
                SearchBox(
                  hintText: "Search doctor, categories, topic . . . .",
                ),
                SizedBox(height: 25.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Text("Appoinment", style: theme.textTheme.headline4),
                ),
                SizedBox(height: 15.0),
                Container(
                  width: double.infinity,
                  height: 150.0,
                  child: ListView.builder(
                    itemCount: appoinmentList.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      var item = appoinmentList[index];
                      return AppoinmentCard(appoinment: item);
                    },
                  ),
                ),
                // Container(
                //   width: double.infinity,
                //   height: 150.0,
                //   child: ListView(
                //     scrollDirection: Axis.horizontal,
                //     shrinkWrap: true,
                //     physics: BouncingScrollPhysics(),
                //     children: <Widget>[
                //       SpecialistCard(
                //         name: "Cardio Specialist",
                //         color: kGreenColor,
                //         doctor: "27",
                //         icon: "assets/lungs.svg",
                //       ),
                //       SpecialistCard(
                //         name: "Heart\nIssue",
                //         color: kBlueColor,
                //         doctor: "57",
                //         icon: "assets/doctor.svg",
                //       ),
                //       SpecialistCard(
                //         name: "Dental\nCard",
                //         color: kOrangeColor,
                //         doctor: "17",
                //         icon: "assets/dentist.svg",
                //       ),
                //       SpecialistCard(
                //         name: "Physio\nTherapy",
                //         color: kPurpleColor,
                //         doctor: "32",
                //         icon: "assets/wheelchair.svg",
                //       ),
                //       SpecialistCard(
                //         name: "Eyes\nSpecialist",
                //         color: kGreenColor,
                //         doctor: "32",
                //         icon: "assets/ophtalmology.svg",
                //       ),
                //     ],
                //   ),
                // ),
                SizedBox(height: 25.0),
                // Container(
                //   width: double.infinity,
                //   height: 150.0,
                //   child: ListView.builder(
                //     itemCount: consultationList.length,
                //     scrollDirection: Axis.horizontal,
                //     shrinkWrap: true,
                //     physics: BouncingScrollPhysics(),
                //     itemBuilder: (context, index) {
                //       var item = consultationList[index];
                //       return ConsultationCard(consultation: item);
                //     },
                //   ),
                // ),
                SizedBox(height: 25.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.0),
                  child: Row(
                    children: <Widget>[
                      Text("Top Danisan", style: theme.textTheme.headline4),
                      Spacer(),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DanisanListView()));
                        },
                        child:
                            Text("View all", style: theme.textTheme.subtitle1),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  height: 200.0,
                  child: ListView.builder(
                    itemCount: danisanList.length,
                    scrollDirection: Axis.horizontal,
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      var danisan = danisanList[index];

                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => DanisanListViewDetail(
                                danisanModel: danisanList[index],
                              ),
                            ),
                          );
                        },
                        child: DanisanCard(
                          danisan: danisan,
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
