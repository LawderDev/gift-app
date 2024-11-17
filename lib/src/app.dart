import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:gift_app/src/login/login_view.dart';
import 'package:gift_app/src/subscribe/subscribe_view.dart';
import 'package:gift_app/src/contact/contact_view.dart';
import 'package:gift_app/src/settings/settings_view.dart';


import 'sample_feature/sample_item_details_view.dart';
import 'sample_feature/sample_item_list_view.dart';
import 'settings_example/settings_controller.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.settingsController,
  });

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    // Glue the SettingsController to the MaterialApp.
    //
    // The ListenableBuilder Widget listens to the SettingsController for changes.
    // Whenever the user updates their settings, the MaterialApp is rebuilt.
    return ListenableBuilder(
      listenable: settingsController,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          // Providing a restorationScopeId allows the Navigator built by the
          // MaterialApp to restore the navigation stack when a user leaves and
          // returns to the app after it has been killed while running in the
          // background.
          restorationScopeId: 'app',

          // Provide the generated AppLocalizations to the MaterialApp. This
          // allows descendant Widgets to display the correct translations
          // depending on the user's locale.
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', ''), // English, no country code
          ],

          // Use AppLocalizations to configure the correct application title
          // depending on the user's locale.
          //
          // The appTitle is defined in .arb files found in the localization
          // directory.
          onGenerateTitle: (BuildContext context) =>
              AppLocalizations.of(context)!.appTitle,

          // Define a light and dark color theme. Then, read the user's
          // preferred ThemeMode (light, dark, or system default) from the
          // SettingsController to display the correct theme.


          theme: ThemeData(
            fontFamily: 'Inter',
            colorScheme: const ColorScheme(
              primary:  Color.fromARGB(255, 191, 110, 80),
              onPrimary:  Color.fromARGB(255, 242, 237, 228),
              secondary:  Color.fromARGB(255, 191, 155, 111),
              onSecondary:  Color.fromARGB(255, 242, 237, 228),
              tertiary:  Color.fromARGB(255, 120, 133, 143),
              error:  Color.fromARGB(255, 242, 75, 106),
              onError:  Color.fromARGB(255, 242, 237, 228),
              surface:  Color.fromARGB(255, 242, 237, 228),
              onSurface:  Color.fromARGB(255, 14, 14, 14),
              inverseSurface:  Color.fromARGB(255, 254, 254, 254),
              onInverseSurface:  Color.fromARGB(255, 14, 14, 14),
              brightness: Brightness.dark,
            ),
          ),

          darkTheme: ThemeData.dark(),
          themeMode: settingsController.themeMode,

          // Define a function to handle named routes in order to support
          // Flutter web url navigation and deep linking.
          onGenerateRoute: (RouteSettings routeSettings) {
            return MaterialPageRoute<void>(
              settings: routeSettings,
              builder: (BuildContext context) {
                switch (routeSettings.name) {
                  case SubscribeView.routeName:
                    return const SubscribeView();
                  case ContactView.routeName:
                    return const ContactView();  
                  case SettingsView.routeName:
                    return const SettingsView();
                  case SampleItemDetailsView.routeName:
                    return const SampleItemDetailsView();
                  case SampleItemListView.routeName:
                  default:
                    return const LoginView();
                }
              },
            );
          },
        );
      },
    );
  }
}
