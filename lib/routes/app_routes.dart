import 'package:flutter/material.dart';
import 'package:joel_s_application7/presentation/loading_page_screen/loading_page_screen.dart';
import 'package:joel_s_application7/presentation/get_started_introduction_screen/get_started_introduction_screen.dart';
import 'package:joel_s_application7/presentation/get_started_subscription_screen/get_started_subscription_screen.dart';
import 'package:joel_s_application7/presentation/get_started_screen/get_started_screen.dart';
import 'package:joel_s_application7/presentation/signup_page_screen/signup_page_screen.dart';
import 'package:joel_s_application7/presentation/login_page_screen/login_page_screen.dart';
import 'package:joel_s_application7/presentation/profile_page_one_screen/profile_page_one_screen.dart';
import 'package:joel_s_application7/presentation/subscription_screen/subscription_screen.dart';
import 'package:joel_s_application7/presentation/voting_screen/voting_screen.dart';
import 'package:joel_s_application7/presentation/profile_page_screen/profile_page_screen.dart';
import 'package:joel_s_application7/presentation/tabs_screen/tabs_screen.dart';
import 'package:joel_s_application7/presentation/home_container_screen/home_container_screen.dart';
import 'package:joel_s_application7/presentation/fanbase_screen/fanbase_screen.dart';
import 'package:joel_s_application7/presentation/gift_screen/gift_screen.dart';
import 'package:joel_s_application7/presentation/gift_available_rewards_screen/gift_available_rewards_screen.dart';
import 'package:joel_s_application7/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String loadingPageScreen = '/loading_page_screen';

  static const String getStartedIntroductionScreen =
      '/get_started_introduction_screen';

  static const String getStartedSubscriptionScreen =
      '/get_started_subscription_screen';

  static const String getStartedScreen = '/get_started_screen';

  static const String signupPageScreen = '/signup_page_screen';

  static const String loginPageScreen = '/login_page_screen';

  static const String profilePageOneScreen = '/profile_page_one_screen';

  static const String subscriptionScreen = '/subscription_screen';

  static const String votingScreen = '/voting_screen';

  static const String profilePageScreen = '/profile_page_screen';

  static const String tabsScreen = '/tabs_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String contestantsPage = '/contestants_page';

  static const String fanbaseScreen = '/fanbase_screen';

  static const String giftScreen = '/gift_screen';

  static const String giftAvailableRewardsScreen =
      '/gift_available_rewards_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    loadingPageScreen: (context) => LoadingPageScreen(),
    getStartedIntroductionScreen: (context) => GetStartedIntroductionScreen(),
    getStartedSubscriptionScreen: (context) => GetStartedSubscriptionScreen(),
    getStartedScreen: (context) => GetStartedScreen(),
    signupPageScreen: (context) => SignupPageScreen(),
    loginPageScreen: (context) => LoginPageScreen(),
    profilePageOneScreen: (context) => ProfilePageOneScreen(),
    subscriptionScreen: (context) => SubscriptionScreen(),
    votingScreen: (context) => VotingScreen(),
    profilePageScreen: (context) => ProfilePageScreen(),
    tabsScreen: (context) => TabsScreen(),
    homeContainerScreen: (context) => HomeContainerScreen(),
    fanbaseScreen: (context) => FanbaseScreen(),
    giftScreen: (context) => GiftScreen(),
    giftAvailableRewardsScreen: (context) => GiftAvailableRewardsScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
