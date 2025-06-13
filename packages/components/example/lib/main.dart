import 'package:flutter/material.dart';
import 'package:osmea_components/osmea_components.dart';

void main() {
  runApp(const OsmeaTextButtonExampleApp());
}

class OsmeaTextButtonExampleApp extends StatelessWidget {
  const OsmeaTextButtonExampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Osmea TextButton Examples',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
      ),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: const TextButtonExamplesScreen(),
    );
  }
}

class TextButtonExamplesScreen extends StatefulWidget {
  const TextButtonExamplesScreen({Key? key}) : super(key: key);

  @override
  State<TextButtonExamplesScreen> createState() =>
      _TextButtonExamplesScreenState();
}

class _TextButtonExamplesScreenState extends State<TextButtonExamplesScreen> {
  bool _isLoading1 = false;
  bool _isLoading2 = false;
  bool _isDisabled = false;

  void _toggleLoading1() {
    setState(() {
      _isLoading1 = !_isLoading1;
    });
  }

  void _toggleLoading2() {
    setState(() {
      _isLoading2 = !_isLoading2;
    });
  }

  void _toggleDisabled() {
    setState(() {
      _isDisabled = !_isDisabled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Osmea TextButton Examples'),
        centerTitle: true,
        backgroundColor: OsmeaColors.nordicBlue,
        foregroundColor: OsmeaColors.white,
      ),
      body: SingleChildScrollView(
        padding: context.paddingMedium,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(
              'OsmeaTextButton Showcase',
              style: OsmeaTextStyle.displayMedium(context).copyWith(
                color: OsmeaColors.nordicBlue,
              ),
            ),
            context.emptySizedHeightBoxMedium,

            // 1. Basic Primary TextButton (No Icon)
            _buildSection(
              context,
              title: '1. Basic Primary Button',
              description: 'Simple primary text button without icon',
              child: OsmeaTextButton(
                text: 'Primary Button',
                variant: ButtonVariant.primary,
                size: ButtonSize.medium,
                onPressed: () =>
                    _showSnackBar(context, 'Primary button pressed!'),
              ),
            ),

            // 2. Secondary with Leading Icon
            _buildSection(
              context,
              title: '2. Secondary with Leading Icon',
              description:
                  'Secondary variant with custom colors and leading icon',
              child: OsmeaTextButton(
                text: 'Download',
                variant: ButtonVariant.secondary,
                size: ButtonSize.large,
                icon: const Icon(Icons.download),
                iconPosition: IconPosition.leading,
                textColor: OsmeaColors.sunsetGlow,
                hoverColor: OsmeaColors.goldenHour.withValues(alpha: 0.1),
                onPressed: () => _showSnackBar(context, 'Download started!'),
              ),
            ),

            // 3. Ghost with Trailing Icon & Custom Style
            _buildSection(
              context,
              title: '3. Ghost with Trailing Icon',
              description:
                  'Ghost variant with trailing icon and custom text style',
              child: OsmeaTextButton(
                text: 'Next Step',
                variant: ButtonVariant.ghost,
                size: ButtonSize.small,
                icon: const Icon(Icons.arrow_forward),
                iconPosition: IconPosition.trailing,
                textStyle: OsmeaTextStyle.buttonSmall(context).copyWith(
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.2,
                ),
                textColor: OsmeaColors.deepSea,
                borderRadius: BorderRadius.circular(20),
                onPressed: () => _showSnackBar(context, 'Moving to next step!'),
              ),
            ),

            // 4. Success with Custom Padding & Margin
            _buildSection(
              context,
              title: '4. Success with Custom Spacing',
              description:
                  'Success variant with custom padding, margin and uppercase text',
              child: OsmeaTextButton(
                text: 'Save Changes',
                variant: ButtonVariant.success,
                size: ButtonSize.extraLarge,
                isUppercase: true,
                padding: context.paddingHigh,
                margin: context.horizontalPaddingMedium,
                backgroundColor: OsmeaColors.forestHeart.withValues(alpha: 0.1),
                textColor: OsmeaColors.forestHeart,
                borderRadius: context.borderRadiusLow,
                onPressed: () =>
                    _showSnackBar(context, 'Changes saved successfully!'),
              ),
            ),

            // 5. Danger with Loading State
            _buildSection(
              context,
              title: '5. Danger with Loading State',
              description:
                  'Danger variant demonstrating loading state with custom animation',
              child: OsmeaTextButton(
                text: 'Delete Account',
                variant: ButtonVariant.danger,
                size: ButtonSize.medium,
                icon: const Icon(Icons.delete_forever),
                iconPosition: IconPosition.leading,
                isLoading: _isLoading1,
                animationDuration: const Duration(milliseconds: 300),
                splashColor: OsmeaColors.amberFlame.withValues(alpha: 0.3),
                onPressed: _isLoading1 ? null : _toggleLoading1,
              ),
            ),

            // 6. Outlined with Elevation & Tooltip
            _buildSection(
              context,
              title: '6. Outlined with Elevation',
              description:
                  'Outlined variant with elevation, tooltip and custom border',
              child: OsmeaTextButton(
                text: 'Help & Support',
                variant: ButtonVariant.outlined,
                size: ButtonSize.medium,
                icon: const Icon(Icons.help_outline),
                iconPosition: IconPosition.leading,
                elevation: 4,
                tooltip: 'Get help and support for your account',
                borderColor: OsmeaColors.crystalBay,
                textColor: OsmeaColors.nordicBlue,
                backgroundColor: OsmeaColors.oceanMist.withValues(alpha: 0.05),
                borderRadius: context.borderRadiusNormal,
                onPressed: () =>
                    _showSnackBar(context, 'Opening help center...'),
              ),
            ),

            // 7. Extra Small with Focus & Autofocus
            _buildSection(
              context,
              title: '7. Extra Small with Focus',
              description:
                  'Extra small size with focus handling and custom text style',
              child: OsmeaTextButton(
                text: 'Quick Action',
                variant: ButtonVariant.primary,
                size: ButtonSize.extraSmall,
                autofocus: true,
                textStyle: OsmeaTextStyle.labelSmall(context).copyWith(
                  fontWeight: FontWeight.w800,
                ),
                textColor: OsmeaColors.deepSea,
                hoverColor: OsmeaColors.crystalBay.withValues(alpha: 0.2),
                onPressed: () =>
                    _showSnackBar(context, 'Quick action executed!'),
              ),
            ),

            // 8. Loading State with Custom Colors
            _buildSection(
              context,
              title: '8. Loading with Custom Colors',
              description:
                  'Loading state with custom colors and long press support',
              child: OsmeaTextButton(
                text: 'Process Data',
                variant: ButtonVariant.secondary,
                size: ButtonSize.large,
                icon: const Icon(Icons.cloud_upload),
                iconPosition: IconPosition.leading,
                isLoading: _isLoading2,
                textColor: OsmeaColors.sunsetGlow,
                backgroundColor: OsmeaColors.goldenHour.withValues(alpha: 0.08),
                splashColor: OsmeaColors.goldenHour.withValues(alpha: 0.25),
                borderRadius: BorderRadius.circular(25),
                onPressed: _isLoading2 ? null : _toggleLoading2,
                onLongPress: () =>
                    _showSnackBar(context, 'Long press detected!'),
              ),
            ),

            // 9. Disabled State Demo
            _buildSection(
              context,
              title: '9. Disabled State Demo',
              description:
                  'Demonstrating disabled state with custom disabled colors',
              child: Column(
                children: [
                  OsmeaTextButton(
                    text: 'Submit Form',
                    variant: ButtonVariant.primary,
                    size: ButtonSize.medium,
                    icon: const Icon(Icons.send),
                    iconPosition: IconPosition.trailing,
                    isDisabled: _isDisabled,
                    disabledColor: OsmeaColors.silver.withValues(alpha: 0.1),
                    textColor: _isDisabled
                        ? OsmeaColors.steel
                        : OsmeaColors.nordicBlue,
                    borderRadius: context.borderRadiusMedium,
                    onPressed: _isDisabled
                        ? null
                        : () => _showSnackBar(context, 'Form submitted!'),
                  ),
                  context.emptySizedHeightBoxNormal,
                  OsmeaTextButton(
                    text: _isDisabled ? 'Enable Button' : 'Disable Button',
                    variant: ButtonVariant.ghost,
                    size: ButtonSize.small,
                    textColor: OsmeaColors.blueMaterial,
                    onPressed: _toggleDisabled,
                  ),
                ],
              ),
            ),

            // 10. Complex Custom Button
            _buildSection(
              context,
              title: '10. Complex Custom Design',
              description:
                  'All customization features combined: gradient background, custom styling, hover effects',
              child: OsmeaTextButton(
                text: 'Premium Feature',
                variant: ButtonVariant.primary,
                size: ButtonSize.large,
                icon: const Icon(Icons.star),
                iconPosition: IconPosition.leading,
                isUppercase: true,
                textStyle: OsmeaTextStyle.buttonLarge(context).copyWith(
                  fontWeight: FontWeight.w800,
                  letterSpacing: 1.5,
                ),
                textColor: OsmeaColors.white,
                backgroundColor: OsmeaColors.nordicBlue,
                hoverColor: OsmeaColors.deepSea.withValues(alpha: 0.2),
                splashColor: OsmeaColors.crystalBay.withValues(alpha: 0.4),
                borderColor: OsmeaColors.crystalBay,
                borderRadius: BorderRadius.circular(30),
                padding: EdgeInsets.symmetric(
                  horizontal: context.normalValue * 3,
                  vertical: context.normalValue * 1.5,
                ),
                margin: context.verticalPaddingNormal,
                elevation: 6,
                animationDuration: const Duration(milliseconds: 400),
                tooltip: 'Unlock premium features with advanced customization',
                onPressed: () =>
                    _showSnackBar(context, 'Premium features unlocked! ⭐'),
                onLongPress: () =>
                    _showSnackBar(context, 'Premium info: Long press detected'),
                onHover: (isHovered) {
                  if (isHovered) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Hovering over premium button'),
                        duration: Duration(milliseconds: 500),
                      ),
                    );
                  }
                },
              ),
            ),

            // Summary Section
            context.emptySizedHeightBoxHigh,
            Container(
              padding: context.paddingMedium,
              decoration: BoxDecoration(
                color: OsmeaColors.oceanMist.withValues(alpha: 0.1),
                borderRadius: context.borderRadiusNormal,
                border: Border.all(
                  color: OsmeaColors.crystalBay.withValues(alpha: 0.3),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Features Demonstrated:',
                    style: OsmeaTextStyle.titleMedium(context).copyWith(
                      color: OsmeaColors.nordicBlue,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  context.emptySizedHeightBoxNormal,
                  ...const [
                    '• All 6 button variants (primary, secondary, outlined, ghost, success, danger)',
                    '• All 5 sizes (extraSmall to extraLarge)',
                    '• Leading and trailing icons',
                    '• Loading states with animations',
                    '• Disabled states',
                    '• Custom colors, padding, margin, borders',
                    '• Custom text styles and uppercase text',
                    '• Tooltips and elevation',
                    '• Hover effects and long press support',
                    '• Focus handling and autofocus',
                    '• Custom animation durations',
                  ].map((feature) => Padding(
                        padding: EdgeInsets.only(bottom: context.lowValue),
                        child: Text(
                          feature,
                          style: OsmeaTextStyle.bodyMedium(context),
                        ),
                      )),
                ],
              ),
            ),
            context.emptySizedHeightBoxHigh,
          ],
        ),
      ),
    );
  }

  Widget _buildSection(
    BuildContext context, {
    required String title,
    required String description,
    required Widget child,
  }) {
    return Container(
      margin: context.onlyBottomPaddingHigh,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: OsmeaTextStyle.headlineSmall(context).copyWith(
              color: OsmeaColors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          context.emptySizedHeightBoxLow,
          Text(
            description,
            style: OsmeaTextStyle.bodySmall(context).copyWith(
              color: OsmeaColors.steel,
            ),
          ),
          context.emptySizedHeightBoxNormal,
          Center(child: child),
          context.emptySizedHeightBoxMedium,
          const Divider(),
        ],
      ),
    );
  }

  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2),
        backgroundColor: OsmeaColors.nordicBlue,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
