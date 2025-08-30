import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:storefront_woo/app/views/view_splash/models/module/states.dart';
import 'package:storefront_woo/app/views/view_splash/models/module/events.dart';
import 'package:storefront_woo/app/views/view_splash/splash_view_model.dart';

class SplashView extends MasterView<SplashViewModel, SplashEvent, SplashState> {
  SplashView({
    super.key,
    Map<String, dynamic> arguments = const {
      "title": "Splash Screen",
      "description": "Welcome to OSMEA Storefront",
    },
    MasterViewTypes currentView = MasterViewTypes.content,
  }) : super(arguments: arguments, currentView: currentView);

  @override
  Widget viewContent(
    BuildContext context,
    SplashViewModel viewModel,
    SplashState state,
  ) {
    return OsmeaComponents.scaffold(
      body: OsmeaComponents.center(
        child: OsmeaComponents.image(
          imageUrl:
              'https://github.com/masterfabric-mobile/osmea/blob/dev/projects/api_explorer/assets/images/osmea_logo_black.png?raw=true',
        ),
      ),
    );
  }

  @override
  void initialContent(SplashViewModel viewModel, BuildContext context) {}
}
