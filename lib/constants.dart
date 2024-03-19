import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

///home_screen constants--------------------------------------------------------
const Color kBackgroundStartColor = Color(0xFFF0F4FD);
const Color kBackgroundEndColor = Color(0xFFE1DAFB);

const Alignment kHomeBeginAlign = Alignment.topRight;
const Alignment kHomeEndAlign = Alignment.bottomLeft;
const Alignment kStaticBeginAlign = Alignment.centerRight;
const Alignment kStaticEndAlign = Alignment.topLeft;
const Alignment kAchievementBeginAlign = Alignment.topLeft;
const Alignment kAcheivementEndAlign = Alignment.bottomRight;
const Alignment kSettingBeginAlign = Alignment.bottomCenter;
const Alignment kSettingEndAlign = Alignment.topCenter;

const Alignment kPracticeBeginAlign = Alignment.bottomLeft;
const Alignment kPracticeEndAlign = Alignment.bottomRight;

const kHomeScreenPadding = EdgeInsets.fromLTRB(35, 06, 35, 02);
const kStartingScreenPadding = EdgeInsets.fromLTRB(35, 08, 35, 02);
const kPracticeScreenPadding = EdgeInsets.fromLTRB(35, 08, 35, 02);

const int kKeyboardImageFlex = 140;
const int kChooseModeFlex = 10;
const int kCardFlex = 110;
const int kNavigationBarFlex = 30;

const TextStyle kTitleTextStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.w600,
  color: Color(0xFF3D0097),
);
const TextStyle kSecondTitleTextStyle = TextStyle(
  color: Color(0xFF3D0097),
  fontSize: 18,
  fontWeight: FontWeight.bold,
);

const EdgeInsetsGeometry kCard1Margin = EdgeInsets.fromLTRB(00, 20, 10, 10);
const EdgeInsetsGeometry kCard2Margin = EdgeInsets.fromLTRB(10, 20, 00, 10);
const EdgeInsetsGeometry kCard3Margin = EdgeInsets.fromLTRB(00, 10, 10, 20);
const EdgeInsetsGeometry kCard4Margin = EdgeInsets.fromLTRB(10, 10, 00, 20);

///card_content constants--------------------------------------------------------
const kImagePadding = EdgeInsets.only(left: 8, top: 8, right: 8, bottom: 2);

const kBorderRadiusTopStart = Radius.circular(8);
const kBorderRadiusTopEnd = Radius.circular(8);

const kContentPadding = EdgeInsets.only(left: 8, top: 6, right: 8, bottom: 0);

const TextStyle kCardTextStyle = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.bold,
);
TextStyle kCardSubTextStyle = TextStyle(
  fontSize: 13,
  fontWeight: FontWeight.w400,
  color: Colors.black.withOpacity(0.5),
);

const IconData kcardIcon = FontAwesomeIcons.angleRight;

///reusable_card constants-------------------------------------------------------
const double kBorderWidth = 0.6;
const Color kBorderColor = Colors.white;
const Color kCardColor = Color(0xFFDFC8FF);
BorderRadius kborderRadius = BorderRadius.circular(18.0);

const BoxShadow kBoxShadowColor1 = BoxShadow(
  color: Color.fromRGBO(255, 255, 255, 1),
  blurRadius: 20,
  spreadRadius: 2,
  offset: Offset(-7, -7),
);

const BoxShadow kBoxShadowColor2 = BoxShadow(
  color: Color.fromRGBO(0, 0, 0, 0.25),
  blurRadius: 20,
  spreadRadius: 2,
  offset: Offset(7, 7),
);

///start_screen constants--------------------------------------------------------
const BorderRadiusGeometry kRoundedBorder = BorderRadius.all(
  Radius.circular(90),
);
const Color kIconColor = Color(0xFF3D0097);
const double kIconSize = 30;

///practice_screen constants-----------------------------------------------------
const Color kTypingSpaceColor = Colors.white;
const Color kTimeBox = Color(0xFF353535);
const Color kRefreshIconColor = Color(0xFF8A39FE);
const Icon kRefreshIcon = Icon(
  FontAwesomeIcons.arrowsRotate,
  color: Colors.white,
  size: 30,
);

const kNormalTextStyle = TextStyle(
  fontSize: 16,
  color: Color(0xFF3D0097),
);
