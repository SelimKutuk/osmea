import 'package:core/src/base/master_view_cubit/master_view_cubit.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:core/src/views/splash/cubit/splash_cubit.dart';
import 'package:core/src/views/splash/cubit/splash_state.dart';
import 'package:core/src/models/splash_models.dart';
import 'package:core/src/views/splash/widgets/splash_startup_widget.dart';
import 'package:core/src/views/splash/widgets/splash_space_widget.dart';
import 'package:core/src/views/splash/widgets/splash_enterprise_widget.dart';
import 'package:core/src/helper/asset_config_helper.dart';

/// 🚀 **OSMEA Splash View**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/core
///
/// Main splash view - Simple timer-based navigation
/// Uses MasterViewCubit for lifecycle management
///
/// {@category Views}
/// {@subCategory SplashView}

class SplashView extends MasterViewCubit<SplashCubit, SplashState> {
  SplashView({
    required super.goRoute,
    super.arguments = const {'splash': true},
  });

  @override
  Future<void> initialContent(viewModel, BuildContext context) async {
    debugPrint('🚀 Splash View Start!');

    // Initialize the splash cubit with app configuration
    await viewModel.initializeSplash();

    // Get duration and navigation settings from AppConfig
    final configHelper = AssetConfigHelper();
    await configHelper.loadConfig();

    final durationMs =
        configHelper.getInt('splash_configuration.duration_milliseconds', 3000);
    final shouldAutoNavigate =
        configHelper.getBool('splash_configuration.auto_navigate', true);
    final navigationTarget = configHelper.getString(
        'splash_configuration.navigation_target', 'home');

    // Setup auto-navigation if enabled
    if (shouldAutoNavigate) {
      Timer(Duration(milliseconds: durationMs), () {
        debugPrint('🚀 Auto-navigating to $navigationTarget');
        goRoute(navigationTarget);
      });
    }
  }

  @override
  Widget viewContent(BuildContext context, viewModel, state) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder<SplashStyle>(
          future: _getSplashStyleFromConfig(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (snapshot.hasData) {
              // Use the splash style from config
              return _getSplashWidget(snapshot.data!);
            } else {
              // Default to startup style if config not available
              debugPrint(
                  '⚠️ Could not get splash style from config, using default');
              return _getSplashWidget(SplashStyle.startup);
            }
          },
        ),
      ),
    );
  }

  /// Get splash style from config
  Future<SplashStyle> _getSplashStyleFromConfig() async {
    final configHelper = AssetConfigHelper();
    await configHelper.loadConfig();

    final styleString =
        configHelper.getString('splash_configuration.style', 'startup');
    final style = _parseStyleFromString(styleString);

    debugPrint('🎨 Splash style from config: $styleString -> $style');

    return style;
  }

  /// Convert string to SplashStyle enum
  SplashStyle _parseStyleFromString(String styleString) {
    switch (styleString.toLowerCase()) {
      case 'space':
        return SplashStyle.space;
      case 'enterprise':
        return SplashStyle.enterprise;
      case 'startup':
      default:
        return SplashStyle.startup;
    }
  }

  /// Get appropriate splash widget based on style
  Widget _getSplashWidget(SplashStyle style) {
    // Use the appropriate splash widget based on style
    switch (style) {
      case SplashStyle.startup:
        return SplashStartupWidget(onLogoTap: () => goRoute('home'));
      case SplashStyle.space:
        return SplashSpaceWidget(onLogoTap: () => goRoute('home'));
      case SplashStyle.enterprise:
        return SplashEnterpriseWidget(onLogoTap: () => goRoute('home'));
    }
  }
}
