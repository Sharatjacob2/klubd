import 'package:flutter/material.dart';
import 'package:klarete/pages/choose_class.dart';
import 'package:klarete/pages/choose_clubs.dart';
import 'package:klarete/pages/choose_initiatives.dart';
import 'package:klarete/pages/choose_interests.dart';
import 'package:klarete/pages/choose_publication.dart';
import 'package:klarete/pages/class_profile.dart';
import 'package:klarete/pages/classes.dart';
import 'package:klarete/pages/club_profile.dart';
import 'package:klarete/pages/clubs.dart';
import 'package:klarete/pages/enter_bio.dart';
import 'package:klarete/pages/event.dart';
import 'package:klarete/pages/home.dart';
import 'package:klarete/pages/loading.dart';
import 'package:klarete/pages/log_in.dart';
import 'package:klarete/pages/not_made.dart';
import 'package:klarete/pages/welcome.dart';
import 'package:klarete/pages/sign_in.dart';
import 'package:klarete/pages/sign_up.dart';
import 'package:klarete/pages/student_profile.dart';
import 'package:klarete/pages/user_profile.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        fontFamily: 'Jost',
        primaryColor: const Color(0xFFAA064C),
      ),
      home: const Loading(),
      routes: {
        '/homer': (context) => const Home(),
        '/notMade': (context) => const NotMade(),
        '/loading': (context) => const Loading(),
        '/signUp': (context) => const SignUp(),
        '/logIn': (context) => const LogIn(),
        '/signIn': (context) => const SignIn(),
        '/welcome': (context) => const Welcome(),
        '/chooseClass': (context) => const ChooseClass(),
        '/chooseClubs': (context) => const ChooseClubs(),
        '/chooseInterests': (context) => const ChooseInterests(),
        '/chooseInitiatives': (context) => const ChooseInitiatives(),
        '/choosePub': (context) => const ChoosePub(),
        '/clubProfile': (context) => const ClubProfile(),
        '/classProfile': (context) => const ClassProfile(),
        '/clubs': (context) => const Clubs(),
        '/classes': (context) => const Classes(),
        '/enterBio': (context) => const EnterBio(),
        '/events': (context) => const Events(),
        '/studentProfile': (context) => const StudentProfile(),
        '/userProfile': (context) => const UserProfile(),
      },
    ),
  );
}
