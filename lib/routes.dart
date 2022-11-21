import 'package:flutter/material.dart';

import 'screens/assignments/add_assignments.dart';
import 'screens/assignments/view_assignment.dart';
import 'screens/assignments/view_submission.dart';
import 'screens/auth/faculty_signup_screen.dart';
import 'screens/auth/login_screen.dart';
import 'screens/auth/signup_type_screen.dart';
import 'screens/auth/student_signup_screen.dart';
import 'screens/auth/welcome_screen.dart';
import 'screens/professor/addSubjects.dart';
import 'screens/professor/professor_main_screen.dart';
import 'screens/student/student_main_screen.dart';
import 'screens/subjects/subject_bottom_navbar.dart';
import 'screens/subjects/subject_details/subject_settings.dart';
import 'screens/subjects/subject_search.dart';
import 'screens/user_profile_screen.dart';

Map<String, WidgetBuilder> routes = {
  WelcomeScreen.routeName: (ctx) => WelcomeScreen(),
  LoginScreen.routeName: (ctx) => LoginScreen(),
  StudentSignUpScreen.routeName: (ctx) => StudentSignUpScreen(),
  StudentMainScreen.routeName: (ctx) => StudentMainScreen(),
  SignupTypeScreen.routeName: (ctx) => SignupTypeScreen(),
  FacultySignUpScreen.routeName: (ctx) => FacultySignUpScreen(),
  ProfessorMainScreen.routeName: (ctx) => ProfessorMainScreen(),
  AddSubjects.routeName: (ctx) => AddSubjects(),
  UserProfileScreen.routeName: (ctx) => UserProfileScreen(),

  //  Subjects
  SubjectBottomNavBar.routeName: (ctx) => SubjectBottomNavBar(),
  SubjectSettings.routeName: (ctx) => SubjectSettings(),
  SubjectSearchScreen.routeName: (ctx) => SubjectSearchScreen(),

  //Assignments
  AddAssignment.routeName: (ctx) => AddAssignment(),
  ViewAssignment.routeName: (ctx) => ViewAssignment(),
  ViewSubmission.routeName: (ctx) => ViewSubmission(),

};
