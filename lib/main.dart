import 'package:flutter/material.dart';
import 'package:tradex/BoiWidgets/boi_screen_type.dart';
import 'package:tradex/BrandsWidgets/brand_screen_type.dart';
import 'package:tradex/FreelancerWidgets/freelancer_screen_type.dart';
import 'package:tradex/InfluencerWidgets/influencer_screen_type.dart';
import 'package:tradex/Pages/home_page.dart';
import 'package:tradex/Pages/investor_page.dart';
import 'package:tradex/ProductsWidgets/product_screen_type.dart';
import 'package:tradex/Routes/routes.dart';
import 'package:tradex/ServiceWidgets/service_screen_type.dart';
import 'package:tradex/UserWidgets/user_screen_type.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:velocity_x/velocity_x.dart';
// Import the firebase_core plugin
import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();

  runApp(App());
}

/// We are using a StatefulWidget such that we only create the [Future] once,
/// no matter how many times our widget rebuild.
/// If we used a [StatelessWidget], in the event where [App] is rebuilt, that
/// would re-initialize FlutterFire and make our application re-enter loading state,
/// which is undesired.
class App extends StatefulWidget {
  // Create the initialization Future outside of `build`:
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  /// The future is part of the state of our widget. We should not call `initializeApp`
  /// directly inside [build].
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Text(snapshot.error.toString());
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp.router(
            title: "Trade-X",
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                textTheme:
                    Theme.of(context).textTheme.apply(fontFamily: 'Open sans')),
            routeInformationParser: VxInformationParser(),
            routerDelegate: VxNavigator(routes: {
              "/": (_, __) => const MaterialPage(
                    child: SingleChildScrollView(
                      child: HomePage(),
                    ),
                  ),
              MyRoutes.investorRoute: (_, __) =>
                  const MaterialPage(child: InvestorPage()),
              MyRoutes.homeRoute: (_, __) => const MaterialPage(
                    child: SingleChildScrollView(
                      child: HomePage(),
                    ),
                  ),
              MyRoutes.influencerRoute: (_, __) => const MaterialPage(
                    child: SingleChildScrollView(
                      child: InfluencerScreenType(),
                    ),
                  ),
              MyRoutes.userRoute: (_, __) => const MaterialPage(
                    child: SingleChildScrollView(
                      child: UserScreenType(),
                    ),
                  ),
              MyRoutes.freelancerRoute: (_, __) => const MaterialPage(
                    child: SingleChildScrollView(
                      child: FreelancerScreenType(),
                    ),
                  ),
              MyRoutes.brandRoute: (_, __) => const MaterialPage(
                    child: SingleChildScrollView(
                      child: BrandScreenType(),
                    ),
                  ),
              MyRoutes.boiRoute: (_, __) => const MaterialPage(
                    child: SingleChildScrollView(
                      child: BoiScreenType(),
                    ),
                  ),
              MyRoutes.productRoute: (_, __) => const MaterialPage(
                    child: SingleChildScrollView(
                      child: ProductScreenType(),
                    ),
                  ),
              MyRoutes.serviceRoute: (_, __) => const MaterialPage(
                    child: SingleChildScrollView(
                      child: ServiceScreenType(),
                    ),
                  ),
            }),
          );
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return const CircularProgressIndicator();
      },
    );
  }
}
