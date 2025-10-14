import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:core/core.dart';
import 'package:storefront_woo/app/views/view_home/home_view.dart';
import 'package:storefront_woo/app/views/view_product_detail/product_detail_view.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  // Global route configuration
  routes: <RouteBase>[
    // Splash Screen Route
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return SplashView(
          goRoute: (String path) {
            if (path.contains(Routes.home.name)) {
              context.go('/home');
            } else if (path.contains(Routes.onboarding.name)) {
              context.go('/onboarding');
            } else {
              context.go('/home'); // Default fallback
            }
          },
        );
      },
    ),

    // Onboarding Route
    GoRoute(
      path: '/onboarding',
      builder: (BuildContext context, GoRouterState state) {
        return OnboardingView(
          goRoute: (String path) {
            if (path.contains(Routes.home.name)) {
              context.go('/home');
            } else {
              context.go('/home'); // Default fallback
            }
          },
          onCompleted: () {
            debugPrint('🎉 Onboarding completed!');
            context.go('/home');
          },
          onSkipped: () {
            debugPrint('⏭️ Onboarding skipped!');
            context.go('/home');
          },
          onError: (error) {
            debugPrint('❌ Onboarding error: $error');
            context.go('/home');
          },
        );
      },
    ),

    // Home Page - Show products directly
    GoRoute(
      path: '/home',
      builder: (BuildContext context, GoRouterState state) {
        return HomeView(
          arguments: const {'home': true},
          goRoute: (String path) {
            if (path.contains('products')) {
              context.go('/products');
            } else if (path.contains('product-detail')) {
              context.go('/product-detail');
            } else {
              context.go('/home');
            }
          },
        );
      },
    ),

    // Product Detail Route
    GoRoute(
      path: '/product-detail/:productId',
      builder: (BuildContext context, GoRouterState state) {
        final productId = int.tryParse(
          state.pathParameters['productId'] ?? '0',
        );
        return ProductDetailView(
          productId: productId ?? 0,
          arguments: const {'productDetail': true},
          goRoute: (String path) {
            if (path.contains('home')) {
              context.go('/home');
            } else {
              context.go('/home');
            }
          },
        );
      },
    ),
  ],
);
