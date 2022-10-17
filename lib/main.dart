import 'package:flutter/material.dart';
import 'package:people_talk/Constants/routes.dart';
import 'package:people_talk/Views/challenges_view.dart';
import 'package:people_talk/Views/edit_Verificationcode_view.dart';
import 'package:people_talk/Views/edit_avatar_view.dart';
import 'package:people_talk/Views/edit_changephonenumber_view.dart';
import 'package:people_talk/Views/edit_profile_view.dart';
import 'package:people_talk/Views/freeuserprofile_view.dart';
import 'package:people_talk/Views/getreserved_view.dart';
import 'package:people_talk/Views/hobby_view.dart';
import 'package:people_talk/Views/job_view.dart';
import 'package:people_talk/Views/login_signup_button_view.dart';
import 'package:people_talk/Views/login_verification_code.dart';
import 'package:people_talk/Views/my_best_view.dart';
import 'package:people_talk/Views/closechallenge_view.dart';
import 'package:people_talk/Views/openchallenge_view.dart';
import 'package:people_talk/Views/phone-login-view.dart';
import 'package:people_talk/Views/phone-signup-view.dart';
import 'package:people_talk/Views/premiumuserprofile_view.dart';
import 'package:people_talk/Views/profile_setup_view.dart';
import 'package:people_talk/Views/profileseenbyuser_view.dart';
import 'package:people_talk/Views/signup-conformcode_view.dart';
import 'package:people_talk/Views/splash-view.dart';
import 'package:people_talk/Views/welcome-view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const GetReservedView(),
      routes: {
        splashRoute: (context) => const SplashView(),
        welcomeRoute: (context) => const WelcomeView(),
        logInSignButtonRoute: (context) => const LogInSignButtonView(),
        phoneLogin: (context) => const PhoneLoginview(),
        loginVerificationRoute: (context) => const LoginVerificationCodeView(),
        phoneSignUp: (context) => const PhoneSignUpView(),
        signUpPhoneConfirmCodeRoute: (context) =>
            const SignUpPhoneConfirmCodeView(),
        setupProfileRoute: (context) => const SetupProfileView(),
        jobRoute: (context) => const JobView(),
        hobbyRoute: (context) => const HobbyView(),
        jobRoute: (context) => const JobView(),
        myBestRoute: (context) => const MyBestView(),
        profileSeenByUserRoute: (context) => const ProfileSeenByUserView(),
        freeUserProfileRoute: (context) => const FreeUserProfileView(),
        premimumUserProfileRoute: (context) => const PremimumUserProfileView(),
        editProfileRoute: (context) => const EditProfileView(),
        editAvatarRoute: (context) => const EditAvatarView(),
        editPhoneNumberChangeRoute: (context) =>
            const EditPhoneNumberChangeView(),
        editVerificationCodeRoute: (context) =>
            const EditVerificationCodeView(),
        challengesRoute: (context) => const ChallengesView(),
        closeChallengeRoute: (context) => const CloseChallengeView(),
          openChallengeRoute: (context) => const OpenChallengview(),
          getReservedRoute: (context) => const GetReservedView(),
      },
    );
  }
}
