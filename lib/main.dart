// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter/scheduler.dart';
// import 'package:joel_s_application7/presentation/login_page_screen/login_page_screen.dart';
// import 'package:joel_s_application7/presentation/profile_page_one_screen/profile_page_one_screen.dart';
// import 'core/app_export.dart';

// var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   SystemChrome.setPreferredOrientations([
//     DeviceOrientation.portraitUp,
//   ]);

//   //
//   ThemeHelper().changeTheme('primary');
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Sizer(
//       builder: (context, orientation, deviceType) {
//         return MaterialApp(
//           theme: theme,
//           title: 'U_Play',
//           debugShowCheckedModeBanner: false,
//           initialRoute: AppRoutes.getStartedIntroductionScreen,
//           routes: AppRoutes.routes,
//         );
//       },
//     );
//   }
// }

// Example two
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:joel_s_application7/widgets/app_bar/appbar_leading_image.dart';
// import 'package:joel_s_application7/widgets/app_bar/appbar_subtitle.dart';
// //import 'package:sizer/sizer.dart'; // Import the Sizer package
// import 'core/app_export.dart';

// var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   SystemChrome.setPreferredOrientations([
//     DeviceOrientation.portraitUp,
//   ]);

//   ThemeHelper().changeTheme('primary');
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Sizer(
//       builder: (context, orientation, deviceType) {
//         return MaterialApp(
//           debugShowMaterialGrid: false,
//           theme: theme,
//           title: 'joel_s_application',
//           debugShowCheckedModeBanner: false,
//           initialRoute: AppRoutes.getStartedScreen,
//           //
//           // fanbaseScreen,

//           // /===>homeContainerScreen,
//           // /===>homePage,
//           // profilePageScreen,
//           // votingScreen,
//           // subscriptionScreen,
//           // signupPageScreen,
//           // getStartedScreen,
//           // loginPageScreen,
//           // loadingPageScreen,
//           // tabsScreen
//           // profilePageOneScreen,
//           //
//           routes: AppRoutes.routes,
//         );
//       },
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My App'),
//       ),
//       body: Column(
//         children: [
//           AppbarLeadingImage(),
//           AppbarSubtitle(
//             text: 'Hello',
//           ),
//           // Use a Navigator to navigate between screens
//           ElevatedButton(
//             onPressed: () {
//               Navigator.pushNamed(context, AppRoutes.loginPageScreen);
//             },
//             child: Text('Go to Login Page'),
//           ),
//           // Add more widgets as needed
//         ],
//         //anything
//       ),
//     );
//   }
// }

//Example Three
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:joel_s_application7/presentation/subscription_screen/subscription_screen.dart';
import 'package:joel_s_application7/presentation/voting_screen/voting_screen.dart';
import 'package:joel_s_application7/widgets/app_bar/appbar_leading_image.dart';
import 'package:joel_s_application7/widgets/app_bar/appbar_subtitle.dart';
import 'package:dots_indicator/dots_indicator.dart'; // Import the dots_indicator package
import 'core/app_export.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

//

//

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowMaterialGrid: false,
          theme: theme,
          title: 'joel_s_application',
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.getStartedSubscriptionScreen,
          //getStartedScreen,
          routes: AppRoutes.routes,
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PageController _pageController = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index.toInt();
                });
              },
              children: [
                AppbarLeadingImage(),
                AppbarSubtitle(
                  text: 'Hello',
                ),
                VotingScreen(),
                SubscriptionScreen(),
                // Add more pages as needed
              ],
            ),
          ),
          DotsIndicator(
            dotsCount: 17, // Change this value based on the number of pages
            position: currentPage,
            decorator: DotsDecorator(
              color: Colors.black, // Inactive dot color
              activeColor: Colors.blue, // Active dot color
              size: const Size(8.0, 8.0),
              activeSize: const Size(12.0, 12.0),
              spacing: const EdgeInsets.all(4.0),
            ),
          ),
          // ElevatedButton(
          //   onPressed: () {
          //     Navigator.pushNamed(context, AppRoutes.loginPageScreen);
          //   },
          //   child: Text('Go to Login Page'),
          // ),
          ElevatedButton(
            onPressed: () {
              Get.toNamed(AppRoutes.getStartedScreen);
              //
            },
            child: Text('Go to Login Page'),
          ),
        ],
        //anything
      ),
    );
  }
}
