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
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:joel_s_application7/widgets/app_bar/appbar_leading_image.dart';
import 'package:joel_s_application7/widgets/app_bar/appbar_subtitle.dart';
//import 'package:sizer/sizer.dart'; // Import the Sizer package
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

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowMaterialGrid: false,
          theme: theme,
          title: 'joel_s_application',
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.getStartedScreen,
          //fanbaseScreen,

          ///===>homeContainerScreen,
          ///===>homePage,
          //profilePageScreen,
          //votingScreen,
          //subscriptionScreen,
          //signupPageScreen,
          //getStartedScreen,
          //loginPageScreen,
          //loadingPageScreen,
          //tabsScreen
          //profilePageOneScreen,
          //
          routes: AppRoutes.routes,
        );
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Column(
        children: [
          AppbarLeadingImage(),
          AppbarSubtitle(
            text: 'Hello',
          ),
          // Use a Navigator to navigate between screens
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.loginPageScreen);
            },
            child: Text('Go to Login Page'),
          ),
          // Add more widgets as needed
        ],
      ),
    );
  }
}
