import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:go_router/go_router.dart';

class StoreAccessView extends StatelessWidget {
  const StoreAccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OsmeaComponents.container(
        padding: const EdgeInsets.all(24),
        child: OsmeaComponents.center(
          child: OsmeaComponents.container(
            constraints: const BoxConstraints(maxWidth: 500),
            child: OsmeaComponents.column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Header
                OsmeaComponents.text(
                  'Store Access',
                  textAlign: TextAlign.center,
                  textStyle: OsmeaTextStyle.headlineLarge(context),
                ),
                OsmeaComponents.sizedBox(height: 8),
                OsmeaComponents.text(
                  'Choose how you want to access your WooCommerce store',
                  textAlign: TextAlign.center,
                  color: OsmeaColors.grayMaterial[600],
                  textStyle: OsmeaTextStyle.bodyMedium(context),
                ),
                OsmeaComponents.sizedBox(height: 48),

                // Public Access Option
                _AccessOptionCard(
                  title: 'Public Access',
                  description:
                      'Browse products and store information without authentication. Perfect for customers.',
                  icon: Icons.public,
                  onTap: () => context.go('/store-setup?mode=public'),
                  primaryColor: OsmeaColors.blue,
                ),

                OsmeaComponents.sizedBox(height: 24),

                // Wizard Access Option
                _AccessOptionCard(
                  title: 'Setup Wizard',
                  description:
                      'Full store management with authentication. Perfect for store owners and administrators.',
                  icon: Icons.settings,
                  onTap: () => context.go('/store-setup?mode=wizard'),
                  primaryColor: OsmeaColors.green,
                ),

                OsmeaComponents.sizedBox(height: 32),

                // Back Button
                OsmeaComponents.button(
                  onPressed: () => context.go('/home'),
                  backgroundColor: OsmeaColors.grayMaterial[200],
                  textColor: OsmeaColors.black,
                  text: 'Back to Home',
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _AccessOptionCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final VoidCallback onTap;
  final Color primaryColor;

  const _AccessOptionCard({
    required this.title,
    required this.description,
    required this.icon,
    required this.onTap,
    required this.primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: primaryColor.withValues(alpha: 0.3)),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: OsmeaComponents.container(
          padding: const EdgeInsets.all(24),
          child: OsmeaComponents.column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Icon and Title
              OsmeaComponents.row(
                children: [
                  OsmeaComponents.container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: primaryColor.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(icon, color: primaryColor, size: 24),
                  ),
                  OsmeaComponents.sizedBox(width: 16),
                  OsmeaComponents.expanded(
                    child: OsmeaComponents.text(
                      title,
                      textStyle: OsmeaTextStyle.titleLarge(context).copyWith(
                        fontWeight: FontWeight.w600,
                        color: primaryColor,
                      ),
                    ),
                  ),
                ],
              ),

              OsmeaComponents.sizedBox(height: 12),

              // Description
              OsmeaComponents.text(
                description,
                color: OsmeaColors.grayMaterial[600],
                textStyle: OsmeaTextStyle.bodyMedium(context),
              ),

              OsmeaComponents.sizedBox(height: 16),

              // Arrow
              OsmeaComponents.row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.arrow_forward_ios, color: primaryColor, size: 16),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
