import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:permission_handler/permission_handler.dart';
import '../utils/asset_paths.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen>
    with TickerProviderStateMixin {
  late PageController _pageController;
  late AnimationController _fadeController;
  late Animation<double> _fadeAnimation;

  int _currentPage = 0;
  final List<IntroPage> _introPages = [
    IntroPage(
      title: 'Welcome to OSMEA',
      subtitle: 'Enterprise-grade Flutter UI Components',
      description:
          'Build beautiful, consistent, and accessible Flutter applications with our comprehensive component library.',
      icon: Icons.widgets_outlined,
      color: OsmeaColors.nordicBlue,
    ),
    IntroPage(
      title: 'Modern Design',
      subtitle: 'Built for the Future',
      description:
          'Clean, intuitive interfaces that follow Material Design 3 principles and modern UX patterns.',
      icon: Icons.design_services_outlined,
      color: OsmeaColors.green,
    ),
    IntroPage(
      title: 'Developer Experience',
      subtitle: 'Built for Developers',
      description:
          'Comprehensive documentation, examples, and easy-to-use APIs that make development a breeze.',
      icon: Icons.code_outlined,
      color: OsmeaColors.orange,
    ),
    IntroPage(
      title: 'Ready to Start?',
      subtitle: 'Let\'s Begin Your Journey',
      description:
          'Explore our component library and see how OSMEA can transform your Flutter development experience.',
      icon: Icons.rocket_launch_outlined,
      color: OsmeaColors.purple,
    ),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _fadeController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _fadeController,
      curve: Curves.easeOut,
    ));

    _fadeController.forward();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _fadeController.dispose();
    super.dispose();
  }

  void _nextPage() {
    if (_currentPage < _introPages.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      _handleProceed();
    }
  }

  Future<void> _handleProceed() async {
    try {
      final shouldRequest = await _showPermissionDialog();
      if (shouldRequest == true) {
        // Clear permission cache first to ensure fresh requests
        await PermissionHandlerHelper.instance.clearPermissionCache();

        // Request permissions one by one with delay for better UX
        final permissions = [
          AppPermission.storage,
          AppPermission.camera,
          AppPermission.microphone,
          AppPermission.locationWhenInUse,
          AppPermission.photos,
          AppPermission.contacts,
          AppPermission.calendar,
          AppPermission.notifications,
        ];

        final results = <AppPermission, PermissionStatus>{};

        for (int i = 0; i < permissions.length; i++) {
          final permission = permissions[i];
          final permissionName = _getPermissionDisplayName(permission);

          // Show progress to user
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                    'Requesting $permissionName permission... (${i + 1}/${permissions.length})'),
                duration: const Duration(seconds: 1),
                backgroundColor: OsmeaColors.nordicBlue,
              ),
            );
          }

          // Request each permission individually
          final isGranted = await PermissionHandlerHelper.instance
              .requestPermission(permission);
          final status =
              isGranted ? PermissionStatus.granted : PermissionStatus.denied;
          results[permission] = status;

          // Show result
          if (mounted) {
            final isGranted = status == PermissionStatus.granted;
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                    '$permissionName: ${isGranted ? "✅ Granted" : "❌ Denied"}'),
                duration: const Duration(seconds: 1),
                backgroundColor:
                    isGranted ? OsmeaColors.green : OsmeaColors.red,
              ),
            );
          }

          // Small delay between requests for better UX
          await Future.delayed(const Duration(milliseconds: 800));

          if (!mounted) return;
        }

        if (!mounted) return;

        // Show summary of permission results
        final grantedCount = results.values
            .where((status) => status == PermissionStatus.granted)
            .length;
        final totalCount = results.length;

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Permissions granted: $grantedCount/$totalCount'),
            duration: const Duration(seconds: 3),
            backgroundColor: grantedCount == totalCount
                ? OsmeaColors.green
                : OsmeaColors.orange,
          ),
        );
      }

      // Mark onboarding as completed regardless of permission results
      await _markOnboardingCompleted();
    } catch (_) {
      // Ignore errors; navigation should proceed regardless
      // Still mark onboarding as completed
      await _markOnboardingCompleted();
    }
    _goToLogin();
  }

  Future<void> _markOnboardingCompleted() async {
    try {
      final onboardingHelper = OnboardingStorageHelper();
      await onboardingHelper.markOnboardingSeen();
      debugPrint('✅ Onboarding marked as completed');
    } catch (e) {
      debugPrint('❌ Error marking onboarding as completed: $e');
    }
  }

  Future<bool?> _showPermissionDialog() {
    return showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (ctx) {
        return AlertDialog(
          title: const Text('App Permissions'),
          content: const Text(
              'This app needs several permissions to function properly:\n\n'
              '• Storage: Save files to Documents/Downloads\n'
              '• Camera: Take photos and videos\n'
              '• Microphone: Record audio\n'
              '• Location: Use location-based features\n'
              '• Photos: Access photo library\n'
              '• Contacts: Access contacts\n'
              '• Calendar: Access calendar\n'
              '• Notifications: Send notifications\n\n'
              'Do you want to grant these permissions now?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(ctx).pop(false),
              child: const Text('Not now'),
            ),
            TextButton(
              onPressed: () => Navigator.of(ctx).pop(true),
              child: const Text('Allow All'),
            ),
          ],
        );
      },
    );
  }

  String _getPermissionDisplayName(AppPermission permission) {
    switch (permission) {
      case AppPermission.storage:
        return 'Storage';
      case AppPermission.camera:
        return 'Camera';
      case AppPermission.microphone:
        return 'Microphone';
      case AppPermission.locationWhenInUse:
        return 'Location';
      case AppPermission.photos:
        return 'Photos';
      case AppPermission.contacts:
        return 'Contacts';
      case AppPermission.calendar:
        return 'Calendar';
      case AppPermission.notifications:
        return 'Notifications';
      default:
        return 'Unknown';
    }
  }

  void _goToLogin() {
    context.go('/'); // Go to main page (with ShellRoute)
  }

  @override
  Widget build(BuildContext context) {
    return OsmeaComponents.scaffold(
      backgroundColor: OsmeaColors.white,
      body: SafeArea(
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: OsmeaComponents.column(
            children: [
              // Header with Logo and Skip button
              OsmeaComponents.padding(
                padding: const EdgeInsets.all(16.0),
                child: OsmeaComponents.row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Logo on the left
                    OsmeaComponents.image(
                      width: 40,
                      height: 40,
                      assetPath: AssetPaths.osmeaLogo,
                      fit: BoxFit.contain,
                    ),
                    // Skip button on the right
                    OsmeaComponents.button(
                      text: 'Skip',
                      variant: ButtonVariant.ghost,
                      onPressed: _handleProceed,
                      textColor: OsmeaColors.black,
                    ),
                  ],
                ),
              ),

              // Page content
              OsmeaComponents.expanded(
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  itemCount: _introPages.length,
                  itemBuilder: (context, index) {
                    return _buildIntroPage(_introPages[index]);
                  },
                ),
              ),

              // Bottom navigation
              OsmeaComponents.padding(
                padding: const EdgeInsets.all(24.0),
                child: OsmeaComponents.column(
                  children: [
                    // Page indicators
                    OsmeaComponents.row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        _introPages.length,
                        (index) => OsmeaComponents.container(
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          width: _currentPage == index ? 24 : 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: _currentPage == index
                                ? OsmeaColors.black
                                : OsmeaColors.grayMaterial,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                    ),

                    OsmeaComponents.sizedBox(height: 32),

                    // Next/Get Started button
                    OsmeaComponents.button(
                      text: _currentPage == _introPages.length - 1
                          ? 'Get Started'
                          : 'Next',
                      variant: ButtonVariant.primary,
                      onPressed: _nextPage,
                      fullWidth: true,
                      backgroundColor: OsmeaColors.black,
                      textColor: OsmeaColors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIntroPage(IntroPage page) {
    return OsmeaComponents.padding(
      padding: const EdgeInsets.all(24.0),
      child: OsmeaComponents.column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Icon without background
          Icon(
            page.icon,
            size: 60,
            color: OsmeaColors.black,
          ),

          OsmeaComponents.sizedBox(height: 48),

          // Title
          OsmeaComponents.text(
            page.title,
            variant: OsmeaTextVariant.headlineLarge,
            color: OsmeaColors.black,
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.center,
          ),

          OsmeaComponents.sizedBox(height: 16),

          // Subtitle
          OsmeaComponents.text(
            page.subtitle,
            variant: OsmeaTextVariant.titleMedium,
            color: OsmeaColors.slate,
            textAlign: TextAlign.center,
          ),

          OsmeaComponents.sizedBox(height: 24),

          // Description
          OsmeaComponents.text(
            page.description,
            variant: OsmeaTextVariant.bodyLarge,
            color: OsmeaColors.grayMaterial,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class IntroPage {
  final String title;
  final String subtitle;
  final String description;
  final IconData icon;
  final Color color;

  IntroPage({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.icon,
    required this.color,
  });
}
