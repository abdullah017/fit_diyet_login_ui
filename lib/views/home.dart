import 'package:doctor_consultant_mobile_app/helpers/colors.dart';
import 'package:doctor_consultant_mobile_app/providers/theme_provider.dart';
import 'package:doctor_consultant_mobile_app/views/doctor_detail.dart';
import 'package:doctor_consultant_mobile_app/views/doctor_list.dart';
import 'package:doctor_consultant_mobile_app/widgets/consultation_card.dart';
import 'package:doctor_consultant_mobile_app/widgets/doctor_card.dart';
import 'package:doctor_consultant_mobile_app/widgets/search_box.dart';
import 'package:doctor_consultant_mobile_app/widgets/specialist_card.dart';
import 'package:flutter/material.dart';
import 'package:doctor_consultant_mobile_app/models/doctor.dart';
import 'package:provider/provider.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: ListTile(
            leading: Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(
                  image: AssetImage(
                      "assets/01-shutterstock_476340928-Irina-Bg.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text("Melody", style: theme.textTheme.headline3),
            subtitle: Text(
              "Find your suitable doctor here",
              style: theme.textTheme.subtitle2,
            ),
            trailing: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: theme.cardColor,
              ),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    Provider.of<ThemeProvider>(context, listen: false)
                        .changeTheme();
                  });
                },
                icon: Icon(
                  ThemeProvider().lightTheme
                      ? Icons.brightness_5
                      : Icons.brightness_4,
                  color: kGreenColor,
                  size: 30.0,
                ),
              ),
            ),
          ),
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
                child: Text("Specialist", style: theme.textTheme.headline3),
              ),
              SizedBox(height: 15.0),
              Container(
                width: double.infinity,
                height: 150.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  children: <Widget>[
                    SpecialistCard(
                      name: "Cardio Specialist",
                      color: kGreenColor,
                      doctor: "27",
                      icon: "assets/lungs.svg",
                    ),
                    SpecialistCard(
                      name: "Heart\nIssue",
                      color: kBlueColor,
                      doctor: "57",
                      icon: "assets/doctor.svg",
                    ),
                    SpecialistCard(
                      name: "Dental\nCard",
                      color: kOrangeColor,
                      doctor: "17",
                      icon: "assets/dentist.svg",
                    ),
                    SpecialistCard(
                      name: "Physio\nTherapy",
                      color: kPurpleColor,
                      doctor: "32",
                      icon: "assets/wheelchair.svg",
                    ),
                    SpecialistCard(
                      name: "Eyes\nSpecialist",
                      color: kGreenColor,
                      doctor: "32",
                      icon: "assets/ophtalmology.svg",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.0),
              Container(
                width: double.infinity,
                height: 150.0,
                child: ListView.builder(
                  itemCount: consultationList.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    var item = consultationList[index];
                    return ConsultationCard(consultation: item);
                  },
                ),
              ),
              SizedBox(height: 25.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  children: <Widget>[
                    Text("Top Doctor", style: theme.textTheme.headline3),
                    Spacer(),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DoctorListView()));
                      },
                      child: Text("View all", style: theme.textTheme.subtitle1),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: double.infinity,
                height: 200.0,
                child: ListView.builder(
                  itemCount: doctorList.length,
                  scrollDirection: Axis.horizontal,
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    var doctor = doctorList[index];

                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => DoctorListViewDetail(
                              doctorModel: doctorList[index],
                            ),
                          ),
                        );
                      },
                      child: DoctorCard(doctor: doctor),
                    );
                  },
                ),
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}