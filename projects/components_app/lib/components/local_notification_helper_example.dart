import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:core/core.dart';

/// 🔔 **Local Notification Helper Example**
///
/// Demonstrates the usage of OSMEA Local Notification Helper with various
/// notification types including instant, scheduled, repeating, and rich notifications.
class LocalNotificationHelperExample extends StatefulWidget {
  const LocalNotificationHelperExample({super.key});

  @override
  State<LocalNotificationHelperExample> createState() =>
      _LocalNotificationHelperExampleState();
}

class _LocalNotificationHelperExampleState
    extends State<LocalNotificationHelperExample> {
  bool _isInitialized = false;
  bool _hasPermissions = false;
  int _notificationCounter = 1;

  @override
  void initState() {
    super.initState();
    _initializeNotifications();
  }

  Future<void> _initializeNotifications() async {
    try {
      // Initialize notification service
      final success = await NotificationHelper.initialize(
        androidIcon: '@mipmap/ic_launcher',
        onNotificationTap: (NotificationResponse response) {
          _showSnackBar(
            'Notification tapped: ${response.payload ?? 'No payload'}',
            Colors.green,
          );
        },
        onNotificationBackground: (NotificationResponse response) {
          debugPrint('Background notification: ${response.payload}');
        },
      );

      if (success) {
        // Request permissions
        final permissions = await NotificationHelper.requestPermissions();
        setState(() {
          _isInitialized = success;
          _hasPermissions = permissions;
        });

        if (!permissions) {
          _showSnackBar(
            'Notification permissions denied. Some features may not work.',
            Colors.orange,
          );
        }
      } else {
        _showSnackBar('Failed to initialize notifications', Colors.red);
      }
    } catch (e) {
      _showSnackBar('Error initializing notifications: $e', Colors.red);
    }
  }

  void _showSnackBar(String message, Color color) {
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: color,
          behavior: SnackBarBehavior.floating,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return OsmeaComponents.scaffold(
      backgroundColor: OsmeaColors.white,
      appBar: _buildAppBar(),
      body: SafeArea(
        child: _buildBody(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      title: const Text('Local Notification Helper'),
      centerTitle: true,
      backgroundColor: OsmeaColors.white,
      foregroundColor: OsmeaColors.black,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () => Navigator.of(context).pop(),
      ),
    );
  }

  Widget _buildBody() {
    return OsmeaComponents.column(
      children: [
        // Status header
        _buildStatusHeader(),
        
        // Content
        OsmeaComponents.expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: OsmeaComponents.column(
              children: [
                _buildBasicNotificationsSection(),
                OsmeaComponents.sizedBox(height: 24),
                _buildScheduledNotificationsSection(),
                OsmeaComponents.sizedBox(height: 24),
                _buildRichNotificationsSection(),
                OsmeaComponents.sizedBox(height: 24),
                _buildManagementSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildStatusHeader() {
    return OsmeaComponents.container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: _isInitialized && _hasPermissions
            ? Colors.green.withValues(alpha: 0.1)
            : Colors.orange.withValues(alpha: 0.1),
        border: Border(
          bottom: BorderSide(
            color: OsmeaColors.black.withValues(alpha: 0.1),
          ),
        ),
      ),
      child: OsmeaComponents.column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OsmeaComponents.row(
            children: [
              Icon(
                _isInitialized && _hasPermissions
                    ? Icons.check_circle
                    : Icons.warning,
                color: _isInitialized && _hasPermissions
                    ? Colors.green
                    : Colors.orange,
                size: 20,
              ),
              OsmeaComponents.sizedBox(width: 8),
              OsmeaComponents.text(
                'Notification Service Status',
                variant: OsmeaTextVariant.bodyMedium,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
          OsmeaComponents.sizedBox(height: 8),
          OsmeaComponents.text(
            _getStatusMessage(),
            variant: OsmeaTextVariant.bodySmall,
            color: OsmeaColors.black.withValues(alpha: 0.7),
          ),
        ],
      ),
    );
  }

  String _getStatusMessage() {
    if (!_isInitialized) {
      return 'Notification service is not initialized';
    } else if (!_hasPermissions) {
      return 'Initialized but permissions denied';
    } else {
      return 'Initialized and ready to use';
    }
  }

  Widget _buildBasicNotificationsSection() {
    return _buildSection(
      title: '📱 Basic Notifications',
      description: 'Simple instant notifications with different importance levels',
      children: [
        _buildActionButton(
          title: 'Simple Notification',
          description: 'Basic notification with title and body',
          icon: Icons.notifications,
          onPressed: _showSimpleNotification,
        ),
        _buildActionButton(
          title: 'High Priority Notification',
          description: 'Important notification with sound and vibration',
          icon: Icons.priority_high,
          onPressed: _showHighPriorityNotification,
        ),
        _buildActionButton(
          title: 'Silent Notification',
          description: 'Quiet notification without sound or vibration',
          icon: Icons.notifications_off,
          onPressed: _showSilentNotification,
        ),
      ],
    );
  }

  Widget _buildScheduledNotificationsSection() {
    return _buildSection(
      title: '⏰ Scheduled Notifications',
      description: 'Notifications scheduled for future delivery',
      children: [
        _buildActionButton(
          title: 'Schedule in 10 Seconds',
          description: 'Notification will appear in 10 seconds',
          icon: Icons.schedule,
          onPressed: _scheduleNotificationIn10Seconds,
        ),
        _buildActionButton(
          title: 'Schedule Daily Reminder',
          description: 'Repeating notification every day',
          icon: Icons.repeat,
          onPressed: _scheduleDailyReminder,
        ),
        _buildActionButton(
          title: 'Schedule in 1 Minute',
          description: 'Test scheduling functionality',
          icon: Icons.timer,
          onPressed: _scheduleNotificationIn1Minute,
        ),
      ],
    );
  }

  Widget _buildRichNotificationsSection() {
    return _buildSection(
      title: '🎵 Rich Notifications',
      description: 'Enhanced notifications with special features',
      children: [
        _buildActionButton(
          title: 'Big Text Notification',
          description: 'Expandable notification with long content',
          icon: Icons.text_fields,
          onPressed: _showBigTextNotification,
        ),
        _buildActionButton(
          title: 'Action Buttons',
          description: 'Interactive notification with action buttons',
          icon: Icons.touch_app,
          onPressed: _showActionNotification,
        ),
        _buildActionButton(
          title: 'Colored Notification',
          description: 'Notification with custom color accent',
          icon: Icons.color_lens,
          onPressed: _showColoredNotification,
        ),
      ],
    );
  }

  Widget _buildManagementSection() {
    return _buildSection(
      title: '🗑️ Notification Management',
      description: 'Cancel and monitor notifications',
      children: [
        _buildActionButton(
          title: 'View Pending Notifications',
          description: 'Check scheduled notifications',
          icon: Icons.pending,
          onPressed: _showPendingNotifications,
        ),
        _buildActionButton(
          title: 'Cancel All Notifications',
          description: 'Remove all notifications',
          icon: Icons.clear_all,
          onPressed: _cancelAllNotifications,
          isDestructive: true,
        ),
      ],
    );
  }

  Widget _buildSection({
    required String title,
    required String description,
    required List<Widget> children,
  }) {
    return OsmeaComponents.column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OsmeaComponents.text(
          title,
          variant: OsmeaTextVariant.headlineSmall,
          fontWeight: FontWeight.w600,
        ),
        OsmeaComponents.sizedBox(height: 4),
        OsmeaComponents.text(
          description,
          variant: OsmeaTextVariant.bodySmall,
          color: OsmeaColors.black.withValues(alpha: 0.6),
        ),
        OsmeaComponents.sizedBox(height: 16),
        ...children,
      ],
    );
  }

  Widget _buildActionButton({
    required String title,
    required String description,
    required IconData icon,
    required VoidCallback onPressed,
    bool isDestructive = false,
  }) {
    return OsmeaComponents.container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: OsmeaColors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isDestructive
              ? Colors.red.withValues(alpha: 0.3)
              : OsmeaColors.black.withValues(alpha: 0.1),
        ),
      ),
      child: InkWell(
        onTap: _isInitialized ? onPressed : null,
        borderRadius: BorderRadius.circular(12),
        child: OsmeaComponents.padding(
          padding: const EdgeInsets.all(16),
          child: OsmeaComponents.row(
            children: [
              Icon(
                icon,
                color: _isInitialized
                    ? (isDestructive ? Colors.red : OsmeaColors.black.withValues(alpha: 0.7))
                    : OsmeaColors.black.withValues(alpha: 0.3),
                size: 24,
              ),
              OsmeaComponents.sizedBox(width: 16),
              OsmeaComponents.expanded(
                child: OsmeaComponents.column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    OsmeaComponents.text(
                      title,
                      variant: OsmeaTextVariant.bodyMedium,
                      fontWeight: FontWeight.w500,
                      color: _isInitialized
                          ? (isDestructive ? Colors.red : OsmeaColors.black)
                          : OsmeaColors.black.withValues(alpha: 0.3),
                    ),
                    OsmeaComponents.sizedBox(height: 2),
                    OsmeaComponents.text(
                      description,
                      variant: OsmeaTextVariant.bodySmall,
                      color: _isInitialized
                          ? OsmeaColors.black.withValues(alpha: 0.6)
                          : OsmeaColors.black.withValues(alpha: 0.3),
                    ),
                  ],
                ),
              ),
              if (!_isInitialized)
                Icon(
                  Icons.block,
                  color: OsmeaColors.black.withValues(alpha: 0.3),
                  size: 16,
                ),
            ],
          ),
        ),
      ),
    );
  }

  // ============================================================================
  // Notification Action Methods
  // ============================================================================

  Future<void> _showSimpleNotification() async {
    await NotificationHelper.showNotification(
      id: _notificationCounter++,
      title: 'Simple Notification',
      body: 'This is a basic notification with title and body text',
      payload: 'simple_notification',
    );
    _showSnackBar('Simple notification sent!', Colors.green);
  }

  Future<void> _showHighPriorityNotification() async {
    await NotificationHelper.showNotification(
      id: _notificationCounter++,
      title: 'High Priority Alert!',
      body: 'This is an important notification with high priority',
      payload: 'high_priority',
      importance: NotificationImportance.high,
      priority: NotificationPriority.high,
      color: Colors.red,
    );
    _showSnackBar('High priority notification sent!', Colors.green);
  }

  Future<void> _showSilentNotification() async {
    await NotificationHelper.showNotification(
      id: _notificationCounter++,
      title: 'Silent Notification',
      body: 'This notification has no sound or vibration',
      payload: 'silent',
      importance: NotificationImportance.low,
      playSound: false,
      enableVibration: false,
    );
    _showSnackBar('Silent notification sent!', Colors.green);
  }

  Future<void> _scheduleNotificationIn10Seconds() async {
    await NotificationHelper.scheduleNotification(
      id: _notificationCounter++,
      title: 'Scheduled Notification',
      body: 'This notification was scheduled for 10 seconds ago',
      scheduledDate: DateTime.now().add(const Duration(seconds: 10)),
      payload: 'scheduled_10s',
    );
    _showSnackBar('Notification scheduled for 10 seconds!', Colors.blue);
  }

  Future<void> _scheduleNotificationIn1Minute() async {
    await NotificationHelper.scheduleNotification(
      id: _notificationCounter++,
      title: 'One Minute Reminder',
      body: 'This notification was scheduled for 1 minute ago',
      scheduledDate: DateTime.now().add(const Duration(minutes: 1)),
      payload: 'scheduled_1m',
      importance: NotificationImportance.defaultImportance,
    );
    _showSnackBar('Notification scheduled for 1 minute!', Colors.blue);
  }

  Future<void> _scheduleDailyReminder() async {
    await NotificationHelper.scheduleRepeatingNotification(
      id: _notificationCounter++,
      title: 'Daily Reminder',
      body: 'This is your daily reminder from OSMEA Components App',
      repeatInterval: RepeatInterval.daily,
      payload: 'daily_reminder',
      importance: NotificationImportance.defaultImportance,
    );
    _showSnackBar('Daily reminder scheduled!', Colors.blue);
  }

  Future<void> _showBigTextNotification() async {
    await NotificationHelper.showBigTextNotification(
      id: _notificationCounter++,
      title: 'Article Update',
      body: 'New article published...',
      bigText: 'This is a very long notification content that demonstrates the big text '
          'notification feature. When the user expands this notification, they will be able '
          'to read this entire message. This is perfect for articles, detailed messages, '
          'or any content that needs more space than a regular notification can provide. '
          'The OSMEA notification helper makes it easy to create these rich experiences.',
      payload: 'big_text',
    );
    _showSnackBar('Big text notification sent!', Colors.green);
  }

  Future<void> _showActionNotification() async {
    await NotificationHelper.showNotificationWithActions(
      id: _notificationCounter++,
      title: 'Message Received',
      body: 'John sent you a message: "Hey, are you available?"',
      payload: 'message_action',
      actions: [
        const NotificationAction(
          id: 'reply',
          title: 'Reply',
          showsUserInterface: true,
        ),
        const NotificationAction(
          id: 'mark_read',
          title: 'Mark as Read',
          cancelNotification: true,
        ),
        const NotificationAction(
          id: 'dismiss',
          title: 'Dismiss',
          cancelNotification: true,
        ),
      ],
    );
    _showSnackBar('Action notification sent!', Colors.green);
  }

  Future<void> _showColoredNotification() async {
    await NotificationHelper.showNotification(
      id: _notificationCounter++,
      title: 'Colorful Notification',
      body: 'This notification has a custom purple color accent',
      payload: 'colored',
      color: Colors.purple,
      importance: NotificationImportance.defaultImportance,
    );
    _showSnackBar('Colored notification sent!', Colors.green);
  }

  Future<void> _showPendingNotifications() async {
    try {
      final pending = await NotificationHelper.getPendingNotifications();
      
      if (pending.isEmpty) {
        _showSnackBar('No pending notifications', Colors.blue);
      } else {
        final message = 'Found ${pending.length} pending notification(s):\n' +
            pending.map((n) => '• ID: ${n.id}, Title: ${n.title}').join('\n');
        
        if (mounted) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Pending Notifications'),
              content: Text(message),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('OK'),
                ),
              ],
            ),
          );
        }
      }
    } catch (e) {
      _showSnackBar('Error getting pending notifications: $e', Colors.red);
    }
  }

  Future<void> _cancelAllNotifications() async {
    try {
      await NotificationHelper.cancelAllNotifications();
      _showSnackBar('All notifications cancelled!', Colors.orange);
    } catch (e) {
      _showSnackBar('Error cancelling notifications: $e', Colors.red);
    }
  }
}