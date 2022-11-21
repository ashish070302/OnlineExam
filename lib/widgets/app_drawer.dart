import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/data_model.dart';
import '../models/shared_preferences.dart';
import '../screens/professor/professor_main_screen.dart';
import '../screens/student/student_main_screen.dart';
import '../screens/user_profile_screen.dart';

class AppDrawer extends StatelessWidget {
  //  Name of the page from where we opened the app drawer
  final String parentName;
  AppDrawer(this.parentName);

  @override
  Widget build(BuildContext context) {
    //  Function to go to the desired page, if not there already
    void checkAndPush(String name, String routeName) {
      if (parentName == name) {
        Navigator.of(context).pop();
        final ScaffoldMessengerState scaffoldMessenger =
            ScaffoldMessenger.of(context);
        scaffoldMessenger.showSnackBar(
          SnackBar(
            content: Text(
              "Already in $name",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
            backgroundColor: Theme.of(context).primaryColorDark,
            duration: Duration(seconds: 1),
          ),
        );
        //  If going back to home, remove previous home
      } else if (name == DataModel.HOME) {
        Navigator.of(context).pop();
        Navigator.of(context).pop();
        Navigator.of(context).pop();
        Navigator.of(context).pushNamed(routeName);
      } else if (parentName != DataModel.HOME) {
        //  Two times so that all the screens do not get stacked up on top of each other
        //  Only the home screen remains always at the bottom while using drawer
        Navigator.of(context).pop();
        Navigator.of(context).pop();
        Navigator.of(context).pushNamed(routeName);
      } else {
        Navigator.of(context).pop();
        Navigator.of(context).pushNamed(routeName);
      }
    }

    return Drawer(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.symmetric(
                      horizontal: BorderSide(color: Colors.black, width: 3)),
                  color: Theme.of(context).primaryColor,
                ),
                height: 80,
                child: Center(
                  child: Text(
                    DataModel.HELLO_FRIEND,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              //  Student home page (visible only to students)
              if (MySharedPreferences.isStudent)
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text(DataModel.HOME),
                  onTap: () {
                    checkAndPush(DataModel.HOME, StudentMainScreen.routeName);
                  },
                ),
              //  Faculty home page (visible only to faculty)
              if (!MySharedPreferences.isStudent)
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text(DataModel.HOME),
                  onTap: () {
                    checkAndPush(DataModel.HOME, ProfessorMainScreen.routeName);
                  },
                ),
              Divider(
                thickness: 1,
                endIndent: 15,
                indent: 15,
              ),
              ListTile(
                leading: Icon(Icons.person_outline),
                title: Text(DataModel.MY_PROFILE),
                onTap: () {
                  checkAndPush(
                      DataModel.MY_PROFILE, UserProfileScreen.routeName);
                },
              ),
              Divider(
                thickness: 1,
                endIndent: 15,
                indent: 15,
              ),

              ListTile(
                leading: Icon(Icons.mail),
                title: Text(DataModel.CONTACT_US),
                onTap: () async {
                  var url = "mailto:atharv.dhoot20@st.niituniversity.in ? subject=ExamPractice Query&body=Please provide details regarding your problem.\nWe will contact you shortly.";
                  // if (await canLaunch(url)) {
                    await launch(url);
                  // } else {
                  //   Fluttertoast.showToast(msg: DataModel.SOMETHING_WENT_WRONG);
                  // }
                },
              ),

              // video home page
              Divider(
                thickness: 1,
                endIndent: 15,
                indent: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
