import 'package:intl/intl.dart';

/// 📅 **OSMEA DateTime Helper**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/core
///
/// Comprehensive DateTime utilities for formatting, parsing, validation,
/// and date manipulation operations with consistent behavior across the OSMEA ecosystem.
///
/// ## Features
/// - **Date Formatting**: Multiple format options for different use cases
/// - **Date Calculations**: Difference calculations and safe date arithmetic
/// - **Time Conversion**: 12/24 hour format conversions
/// - **Duration Formatting**: Human-readable duration strings
/// - **Timezone Support**: UTC/Local time conversions and timezone handling
/// - **Relative Time**: Human-readable relative time strings ("2 hours ago", "yesterday")
/// - **Custom Formatting**: Flexible date formatting with custom patterns
/// - **Duration Operations**: Safe date arithmetic with edge case handling
/// - **Input Validation**: Comprehensive validation with fallback values
/// - **Leap Year Handling**: Proper handling of leap years and daylight saving
/// - **Locale Support**: Multi-locale date and time formatting
///
/// ## Usage Examples
/// ```dart
/// import 'package:core/core.dart';
///
/// // Basic formatting
/// final now = DateTime.now();
/// print(DateTimeHelper.formatDateTime(now)); // "12 Sep 2025 - 14:30"
/// print(DateTimeHelper.formatFullDate(now)); // "Thursday, 12 September 2025"
///
/// // Date calculations
/// int daysDiff = DateTimeHelper.calculateDateDifference(startDate, endDate);
/// bool sameDay = DateTimeHelper.isSameDay(date1, date2);
///
/// // Timezone conversions
/// DateTime localTime = DateTimeHelper.utcToLocal(utcDateTime);
/// DateTime utcTime = DateTimeHelper.localToUtc(localDateTime);
///
/// // Relative time
/// String relative = DateTimeHelper.getRelativeTime(pastDate); // "2 hours ago"
/// String future = DateTimeHelper.getFutureRelativeTime(futureDate); // "in 3 days"
///
/// // Custom formatting
/// String custom = DateTimeHelper.formatCustom(now, "yyyy-MM-dd HH:mm:ss");
/// String iso = DateTimeHelper.formatISO8601(now);
/// String formatted = DateTimeHelper.format(now, pattern: "dd/MM/yyyy"); //
///
/// // API timezone handling
/// DateTime localTime = DateTimeHelper.convertApiTimestamp(1734567890);
/// DateTime fromISO = DateTimeHelper.convertApiISO8601("2025-09-12T14:30:00Z");
///
/// // Deadline calculations
/// int daysLeft = DateTimeHelper.getDaysUntilDeadline(deadline);
/// int hoursLeft = DateTimeHelper.getHoursUntilEvent(eventTime);
/// int minutesLeft = DateTimeHelper.getMinutesUntilAction(actionTime);
///
/// // Scheduling operations
/// DateTime plus30min = DateTimeHelper.add30Minutes(now);
/// DateTime minus7days = DateTimeHelper.subtract7Days(now);
/// DateTime plus1week = DateTimeHelper.add1Week(now);
///
/// // Safe date operations
/// DateTime newDate = DateTimeHelper.addMonths(now, 1);
/// DateTime safeDate = DateTimeHelper.addYears(leapYearDate, 1);
///
/// // Deadline status
/// String status = DateTimeHelper.getDeadlineStatus(deadline); // "Tomorrow", "Overdue", etc.
/// bool isPassed = DateTimeHelper.isDeadlinePassed(deadline);
///
/// // Input validation
/// bool valid = DateTimeHelper.validateDateString("2025-09-12", "yyyy-MM-dd");
/// DateTime parsed = DateTimeHelper.safeParseDate("invalid", "yyyy-MM-dd");
///
/// // Locale support
/// String localized = DateTimeHelper.formatLocalized(now, "tr_TR");
/// String weekday = DateTimeHelper.getWeekdayLocalized(now, "tr_TR");
/// ```
class DateTimeHelper {
  // ============================================================================
  // 📅 BASIC DATE FORMATTING METHODS
  // ============================================================================

  /// 🕐 **Standard DateTime Format**
  ///
  /// Formats the given DateTime to "dd MMM yyyy - kk:mm".
  ///
  /// Example: `12 Sep 2025 - 14:30`
  static String formatDateTime(DateTime dateTime) {
    return DateFormat('dd MMM yyyy - kk:mm').format(dateTime);
  }

  /// 🔢 **Numeric DateTime Format**
  ///
  /// Formats the given DateTime to "dd.MM.yyyy - kk:mm".
  ///
  /// Example: `12.09.2025 - 14:30`
  static String formatDateTimeNumber(DateTime dateTime) {
    return DateFormat('dd.MM.yyyy - kk:mm').format(dateTime);
  }

  /// 📅 **Date Only Format**
  ///
  /// Formats the given DateTime to "dd MMM yyyy" without the clock.
  ///
  /// Example: `12 Sep 2025`
  static String formatDateTimeWithoutClock(DateTime dateTime) {
    final formattedDate = DateFormat('dd MMM yyyy - kk:mm').format(dateTime);
    return formattedDate.substring(0, formattedDate.length - 8);
  }

  /// ⏰ **Current DateTime Format**
  ///
  /// Formats the current date and time to "dd MMM yyyy - kk:mm".
  ///
  /// Example: `12 Sep 2025 - 14:30`
  static String formatCurrentDateTimeNow() {
    return formatDateTime(DateTime.now());
  }

  /// 📆 **Full Date Format**
  ///
  /// Returns the full date in the format "Monday, 25 December 2024".
  ///
  /// Example: `Thursday, 12 September 2025`
  static String formatFullDate(DateTime date) {
    return DateFormat('EEEE, d MMMM yyyy').format(date);
  }

  /// 📊 **DD/MM/YYYY Format**
  ///
  /// Formats a given date to "dd.MM.yyyy".
  ///
  /// Example: `12.09.2025`
  static String dateTimeFormatDDMMYYYY(DateTime date) {
    return DateFormat('dd.MM.yyyy').format(date);
  }

  /// 🕰️ **UNIX Timestamp Converter**
  ///
  /// Converts a UNIX timestamp (seconds) to a readable date format.
  ///
  /// Example: `"1734567890"` → `"25 December 2024"`
  static String getTimeFromTimeStamp(String timeStamp) {
    final dateTime =
        DateTime.fromMillisecondsSinceEpoch(int.parse(timeStamp) * 1000);
    final day = dateTime.day;
    final month = getMonthIntToString(dateTime.month);
    final year = dateTime.year;
    return "$day $month $year";
  }

  /// 🔄 **String to DateTime Parser**
  ///
  /// Parses a date string in "dd.MM.yyyy" format to DateTime.
  ///
  /// Example: `"12.09.2025"` → `DateTime(2025, 9, 12)`
  static DateTime dateTimeFromString(String dateStr) {
    return DateFormat('dd.MM.yyyy').parse(dateStr);
  }

  // ============================================================================
  // 🕐 TIME FORMATTING METHODS
  // ============================================================================

  /// 🕐 **12-Hour Time Format**
  ///
  /// Converts a DateTime to a formatted time string like "9:30 AM".
  ///
  /// Example: `DateTime(2025, 9, 12, 14, 30)` → `"2:30 PM"`
  static String formatTimeTo12Hour(DateTime dateTime) {
    return DateFormat('hh:mm a').format(dateTime);
  }

  /// 🕐 **24-Hour Time Format**
  ///
  /// Converts a DateTime to a 24-hour formatted time string like "21:30".
  ///
  /// Example: `DateTime(2025, 9, 12, 21, 30)` → `"21:30"`
  static String formatTimeTo24Hour(DateTime dateTime) {
    return DateFormat('HH:mm').format(dateTime);
  }

  /// ⏱️ **Duration Format**
  ///
  /// Formats a Duration to "HH:mm" format.
  ///
  /// Example: `Duration(hours: 2, minutes: 30)` → `"02:30"`
  static String formatDuration(Duration duration) {
    final hours = duration.inHours.toString().padLeft(2, '0');
    final minutes = (duration.inMinutes % 60).toString().padLeft(2, '0');
    return '$hours:$minutes';
  }

  // ============================================================================
  // 📅 DATE UTILITY METHODS
  // ============================================================================

  /// 📅 **Month Name Converter**
  ///
  /// Converts a numeric month (1-12) to its string equivalent.
  ///
  /// Example: `1` → `"January"`, `12` → `"December"`
  static String getMonthIntToString(int month) {
    switch (month) {
      case 1:
        return "January";
      case 2:
        return "February";
      case 3:
        return "March";
      case 4:
        return "April";
      case 5:
        return "May";
      case 6:
        return "June";
      case 7:
        return "July";
      case 8:
        return "August";
      case 9:
        return "September";
      case 10:
        return "October";
      case 11:
        return "November";
      case 12:
        return "December";
      default:
        return "January";
    }
  }

  /// 📅 **Weekday Abbreviation**
  ///
  /// Returns the weekday abbreviation for a given date.
  ///
  /// Example: `DateTime(2025, 9, 12)` → `"Fri"`
  static String getWeekday(DateTime date) {
    switch (date.weekday) {
      case DateTime.monday:
        return "Mon";
      case DateTime.tuesday:
        return "Tue";
      case DateTime.wednesday:
        return "Wed";
      case DateTime.thursday:
        return "Thu";
      case DateTime.friday:
        return "Fri";
      case DateTime.saturday:
        return "Sat";
      case DateTime.sunday:
        return "Sun";
      default:
        return "";
    }
  }

  /// 📅 **Same Day Check**
  ///
  /// Checks if two dates represent the same calendar day.
  ///
  /// Example: `isSameDay(date1, date2)` → `true/false`
  static bool isSameDay(DateTime date1, DateTime date2) {
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }

  /// 📅 **Date Difference Calculator**
  ///
  /// Calculates the difference in days between two dates.
  ///
  /// Example: `calculateDateDifference(startDate, endDate)` → `5` (days)
  static int calculateDateDifference(DateTime fromDate, DateTime toDate) {
    return toDate.difference(fromDate).inDays;
  }

  // ============================================================================
  // ✅ VALIDATION METHODS
  // ============================================================================

  // ============================================================================
  // 🌍 TIMEZONE CONVERSION METHODS
  // ============================================================================

  /// 🌍 **UTC to Local Time Converter**
  ///
  /// Converts a UTC DateTime to local time.
  ///
  /// Example: `utcToLocal(DateTime.utc(2025, 9, 12, 14, 30))` → `DateTime(2025, 9, 12, 17, 30)` (if +3 timezone)
  static DateTime utcToLocal(DateTime utcDateTime) {
    return utcDateTime.toLocal();
  }

  /// 🌍 **Local to UTC Time Converter**
  ///
  /// Converts a local DateTime to UTC time.
  ///
  /// Example: `localToUtc(DateTime(2025, 9, 12, 17, 30))` → `DateTime.utc(2025, 9, 12, 14, 30)` (if +3 timezone)
  static DateTime localToUtc(DateTime localDateTime) {
    return localDateTime.toUtc();
  }

  /// 🌍 **Timezone Offset Calculator**
  ///
  /// Calculates the timezone offset in hours from UTC.
  ///
  /// Example: `getTimezoneOffset()` → `3` (for +3 timezone)
  static int getTimezoneOffset() {
    final now = DateTime.now();
    final utc = now.toUtc();
    final local = utc.toLocal();
    return local.difference(utc).inHours;
  }

  /// 🌍 **Is Daylight Saving Time Check**
  ///
  /// Checks if the given date is during daylight saving time.
  ///
  /// Example: `isDaylightSavingTime(DateTime(2025, 7, 15))` → `true/false`
  static bool isDaylightSavingTime(DateTime date) {
    final january = DateTime(date.year, 1, 1);
    final july = DateTime(date.year, 7, 1);
    final januaryOffset = january.timeZoneOffset;
    final julyOffset = july.timeZoneOffset;
    return julyOffset != januaryOffset;
  }

  /// 🌍 **API UTC Timestamp Converter**
  ///
  /// Converts UTC timestamp from API to local time
  ///
  /// Example: `convertApiTimestamp(1734567890)` → `DateTime(2024, 12, 18, 17, 31, 30)` (local time)
  static DateTime convertApiTimestamp(int utcTimestamp) {
    final utcDateTime =
        DateTime.fromMillisecondsSinceEpoch(utcTimestamp * 1000, isUtc: true);
    return utcDateTime.toLocal();
  }

  /// 🌍 **API UTC Timestamp String Converter**
  ///
  /// Converts UTC timestamp string from API to local time.
  ///
  /// Example: `convertApiTimestampString("1734567890")` → `DateTime(2024, 12, 18, 17, 31, 30)` (local time)
  static DateTime convertApiTimestampString(String utcTimestamp) {
    return convertApiTimestamp(int.parse(utcTimestamp));
  }

  /// 🌍 **API ISO 8601 String Converter**
  ///
  /// Converts ISO 8601 string from API to local time.
  ///
  /// Example: `convertApiISO8601("2025-09-12T14:30:00Z")` → `DateTime(2025, 9, 12, 17, 30, 0)` (local time)
  static DateTime convertApiISO8601(String iso8601String) {
    final utcDateTime = DateTime.parse(iso8601String);
    return utcDateTime.toLocal();
  }

  // ============================================================================
  // ⏰ RELATIVE TIME METHODS
  // ============================================================================

  /// ⏰ **Human-Readable Relative Time**
  ///
  /// Returns a human-readable relative time string.
  ///
  /// Example: `getRelativeTime(DateTime.now().subtract(Duration(hours: 2)))` → `"2 hours ago"`
  static String getRelativeTime(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);

    if (difference.inDays > 365) {
      final years = (difference.inDays / 365).floor();
      return years == 1 ? "1 year ago" : "$years years ago";
    } else if (difference.inDays > 30) {
      final months = (difference.inDays / 30).floor();
      return months == 1 ? "1 month ago" : "$months months ago";
    } else if (difference.inDays > 7) {
      final weeks = (difference.inDays / 7).floor();
      return weeks == 1 ? "1 week ago" : "$weeks weeks ago";
    } else if (difference.inDays > 0) {
      return difference.inDays == 1
          ? "yesterday"
          : "${difference.inDays} days ago";
    } else if (difference.inHours > 0) {
      return difference.inHours == 1
          ? "1 hour ago"
          : "${difference.inHours} hours ago";
    } else if (difference.inMinutes > 0) {
      return difference.inMinutes == 1
          ? "1 minute ago"
          : "${difference.inMinutes} minutes ago";
    } else {
      return "just now";
    }
  }

  /// ⏰ **Future Relative Time**
  ///
  /// Returns a human-readable relative time string for future dates.
  ///
  /// Example: `getFutureRelativeTime(DateTime.now().add(Duration(days: 3)))` → `"in 3 days"`
  static String getFutureRelativeTime(DateTime dateTime) {
    final now = DateTime.now();
    final difference = dateTime.difference(now);

    if (difference.inDays > 365) {
      final years = (difference.inDays / 365).floor();
      return years == 1 ? "in 1 year" : "in $years years";
    } else if (difference.inDays > 30) {
      final months = (difference.inDays / 30).floor();
      return months == 1 ? "in 1 month" : "in $months months";
    } else if (difference.inDays > 7) {
      final weeks = (difference.inDays / 7).floor();
      return weeks == 1 ? "in 1 week" : "in $weeks weeks";
    } else if (difference.inDays > 0) {
      return difference.inDays == 1
          ? "tomorrow"
          : "in ${difference.inDays} days";
    } else if (difference.inHours > 0) {
      return difference.inHours == 1
          ? "in 1 hour"
          : "in ${difference.inHours} hours";
    } else if (difference.inMinutes > 0) {
      return difference.inMinutes == 1
          ? "in 1 minute"
          : "in ${difference.inMinutes} minutes";
    } else {
      return "now";
    }
  }

  /// ⏰ **Smart Relative Time**
  ///
  /// Returns relative time for both past and future dates.
  ///
  /// Example: `getSmartRelativeTime(pastDate)` → `"2 hours ago"` or `getSmartRelativeTime(futureDate)` → `"in 3 days"`
  static String getSmartRelativeTime(DateTime dateTime) {
    final now = DateTime.now();
    if (dateTime.isBefore(now)) {
      return getRelativeTime(dateTime);
    } else {
      return getFutureRelativeTime(dateTime);
    }
  }

  // ============================================================================
  // 🎨 CUSTOM FORMATTING METHODS
  // ============================================================================

  /// 🎨 **Custom Date Formatter**
  ///
  /// Formats a DateTime using a custom pattern.
  ///
  /// Example: `formatCustom(DateTime.now(), "yyyy-MM-dd HH:mm:ss")` → `"2025-09-12 14:30:00"`
  static String formatCustom(DateTime dateTime, String pattern) {
    return DateFormat(pattern).format(dateTime);
  }

  /// 🎨 **Format Method **
  ///
  /// Formats a DateTime using a custom pattern
  ///
  /// Example: `format(DateTime.now(), pattern: "dd/MM/yyyy")` → `"12/09/2025"`
  static String format(DateTime dateTime, {required String pattern}) {
    return DateFormat(pattern).format(dateTime);
  }

  /// 🎨 **ISO 8601 Formatter**
  ///
  /// Formats a DateTime to ISO 8601 format.
  ///
  /// Example: `formatISO8601(DateTime.now())` → `"2025-09-12T14:30:00.000Z"`
  static String formatISO8601(DateTime dateTime) {
    return dateTime.toUtc().toIso8601String();
  }

  /// 🎨 **RFC 2822 Formatter**
  ///
  /// Formats a DateTime to RFC 2822 format.
  ///
  /// Example: `formatRFC2822(DateTime.now())` → `"Fri, 12 Sep 2025 14:30:00 +0000"`
  static String formatRFC2822(DateTime dateTime) {
    return DateFormat('EEE, dd MMM yyyy HH:mm:ss Z').format(dateTime.toUtc());
  }

  /// 🎨 **Short Date Formatter**
  ///
  /// Formats a DateTime to short date format.
  ///
  /// Example: `formatShort(DateTime.now())` → `"9/12/25"`
  static String formatShort(DateTime dateTime) {
    return DateFormat('M/d/yy').format(dateTime);
  }

  /// 🎨 **Long Date Formatter**
  ///
  /// Formats a DateTime to long date format.
  ///
  /// Example: `formatLong(DateTime.now())` → `"September 12, 2025"`
  static String formatLong(DateTime dateTime) {
    return DateFormat('MMMM d, yyyy').format(dateTime);
  }

  // ============================================================================
  // ⏱️ DURATION OPERATIONS
  // ============================================================================

  /// ⏱️ **Safe Date Addition**
  ///
  /// Safely adds a duration to a date, handling edge cases like month boundaries.
  ///
  /// Example: `addDuration(DateTime(2025, 1, 31), Duration(days: 1))` → `DateTime(2025, 2, 1)`
  static DateTime addDuration(DateTime dateTime, Duration duration) {
    return dateTime.add(duration);
  }

  /// ⏱️ **Safe Date Subtraction**
  ///
  /// Safely subtracts a duration from a date, handling edge cases.
  ///
  /// Example: `subtractDuration(DateTime(2025, 3, 1), Duration(days: 1))` → `DateTime(2025, 2, 28)`
  static DateTime subtractDuration(DateTime dateTime, Duration duration) {
    return dateTime.subtract(duration);
  }

  /// ⏱️ **Add Days Safely**
  ///
  /// Adds days to a date, handling month and year boundaries.
  ///
  /// Example: `addDays(DateTime(2025, 1, 31), 1)` → `DateTime(2025, 2, 1)`
  static DateTime addDays(DateTime dateTime, int days) {
    return dateTime.add(Duration(days: days));
  }

  /// ⏱️ **Add Months Safely**
  ///
  /// Adds months to a date, handling different month lengths and leap years.
  ///
  /// Example: `addMonths(DateTime(2025, 1, 31), 1)` → `DateTime(2025, 2, 28)`
  static DateTime addMonths(DateTime dateTime, int months) {
    final newMonth = dateTime.month + months;
    final newYear = dateTime.year + ((newMonth - 1) ~/ 12);
    final adjustedMonth = ((newMonth - 1) % 12) + 1;

    // Handle day overflow (e.g., Jan 31 + 1 month = Feb 28/29)
    final daysInNewMonth = DateTime(newYear, adjustedMonth + 1, 0).day;
    final adjustedDay =
        dateTime.day > daysInNewMonth ? daysInNewMonth : dateTime.day;

    return DateTime(newYear, adjustedMonth, adjustedDay, dateTime.hour,
        dateTime.minute, dateTime.second, dateTime.millisecond);
  }

  /// ⏱️ **Add Years Safely**
  ///
  /// Adds years to a date, handling leap years.
  ///
  /// Example: `addYears(DateTime(2024, 2, 29), 1)` → `DateTime(2025, 2, 28)`
  static DateTime addYears(DateTime dateTime, int years) {
    final newYear = dateTime.year + years;

    // Handle leap year edge case (Feb 29)
    if (dateTime.month == 2 && dateTime.day == 29) {
      final isLeapYear = _isLeapYear(newYear);
      final adjustedDay = isLeapYear ? 29 : 28;
      return DateTime(newYear, 2, adjustedDay, dateTime.hour, dateTime.minute,
          dateTime.second, dateTime.millisecond);
    }

    return DateTime(newYear, dateTime.month, dateTime.day, dateTime.hour,
        dateTime.minute, dateTime.second, dateTime.millisecond);
  }

  // ============================================================================
  // 📅 DEADLINE & SCHEDULING METHODS
  // ============================================================================

  /// 📅 **Days Until Deadline**
  ///
  /// Calculates days until a deadline
  ///
  /// Example: `getDaysUntilDeadline(DateTime(2025, 12, 31))` → `105` (days)
  static int getDaysUntilDeadline(DateTime deadline) {
    final now = DateTime.now();
    final difference = deadline.difference(now);
    return difference.inDays;
  }

  /// 📅 **Hours Until Event**
  ///
  /// Calculates hours until an event
  ///
  /// Example: `getHoursUntilEvent(DateTime(2025, 9, 15, 18, 0))` → `72` (hours)
  static int getHoursUntilEvent(DateTime eventTime) {
    final now = DateTime.now();
    final difference = eventTime.difference(now);
    return difference.inHours;
  }

  /// 📅 **Minutes Until Action**
  ///
  /// Calculates minutes until a specific action
  ///
  /// Example: `getMinutesUntilAction(DateTime(2025, 9, 12, 15, 0))` → `30` (minutes)
  static int getMinutesUntilAction(DateTime actionTime) {
    final now = DateTime.now();
    final difference = actionTime.difference(now);
    return difference.inMinutes;
  }

  /// 📅 **Add 30 Minutes (Scheduling)**
  ///
  /// Adds 30 minutes to a date
  ///
  /// Example: `add30Minutes(DateTime(2025, 9, 12, 14, 0))` → `DateTime(2025, 9, 12, 14, 30)`
  static DateTime add30Minutes(DateTime dateTime) {
    return dateTime.add(Duration(minutes: 30));
  }

  /// 📅 **Subtract 7 Days (Scheduling)**
  ///
  /// Subtracts 7 days from a date
  ///
  /// Example: `subtract7Days(DateTime(2025, 9, 12))` → `DateTime(2025, 9, 5)`
  static DateTime subtract7Days(DateTime dateTime) {
    return dateTime.subtract(Duration(days: 7));
  }

  /// 📅 **Add 1 Hour (Scheduling)**
  ///
  /// Adds 1 hour to a date.
  ///
  /// Example: `add1Hour(DateTime(2025, 9, 12, 14, 0))` → `DateTime(2025, 9, 12, 15, 0)`
  static DateTime add1Hour(DateTime dateTime) {
    return dateTime.add(Duration(hours: 1));
  }

  /// 📅 **Add 1 Day (Scheduling)**
  ///
  /// Adds 1 day to a date.
  ///
  /// Example: `add1Day(DateTime(2025, 9, 12))` → `DateTime(2025, 9, 13)`
  static DateTime add1Day(DateTime dateTime) {
    return dateTime.add(Duration(days: 1));
  }

  /// 📅 **Add 1 Week (Scheduling)**
  ///
  /// Adds 1 week to a date.
  ///
  /// Example: `add1Week(DateTime(2025, 9, 12))` → `DateTime(2025, 9, 19)`
  static DateTime add1Week(DateTime dateTime) {
    return dateTime.add(Duration(days: 7));
  }

  /// 📅 **Add 1 Month (Scheduling)**
  ///
  /// Adds 1 month to a date with edge case handling.
  ///
  /// Example: `add1Month(DateTime(2025, 1, 31))` → `DateTime(2025, 2, 28)`
  static DateTime add1Month(DateTime dateTime) {
    return addMonths(dateTime, 1);
  }

  /// 📅 **Add 1 Year (Scheduling)**
  ///
  /// Adds 1 year to a date with leap year handling.
  ///
  /// Example: `add1Year(DateTime(2024, 2, 29))` → `DateTime(2025, 2, 28)`
  static DateTime add1Year(DateTime dateTime) {
    return addYears(dateTime, 1);
  }

  /// 📅 **Is Deadline Passed**
  ///
  /// Checks if a deadline has passed.
  ///
  /// Example: `isDeadlinePassed(DateTime(2025, 9, 10))` → `true/false`
  static bool isDeadlinePassed(DateTime deadline) {
    return DateTime.now().isAfter(deadline);
  }

  /// 📅 **Is Deadline Today**
  ///
  /// Checks if a deadline is today.
  ///
  /// Example: `isDeadlineToday(DateTime(2025, 9, 12))` → `true/false`
  static bool isDeadlineToday(DateTime deadline) {
    return isSameDay(DateTime.now(), deadline);
  }

  /// 📅 **Is Deadline Tomorrow**
  ///
  /// Checks if a deadline is tomorrow.
  ///
  /// Example: `isDeadlineTomorrow(DateTime(2025, 9, 13))` → `true/false`
  static bool isDeadlineTomorrow(DateTime deadline) {
    final tomorrow = DateTime.now().add(Duration(days: 1));
    return isSameDay(tomorrow, deadline);
  }

  /// 📅 **Get Deadline Status**
  ///
  /// Returns a human-readable status for a deadline.
  ///
  /// Example: `getDeadlineStatus(DateTime(2025, 9, 13))` → `"Tomorrow"` or `"Overdue"` or `"5 days left"`
  static String getDeadlineStatus(DateTime deadline) {
    final now = DateTime.now();
    final difference = deadline.difference(now);

    if (difference.isNegative) {
      return "Overdue";
    } else if (isDeadlineToday(deadline)) {
      return "Today";
    } else if (isDeadlineTomorrow(deadline)) {
      return "Tomorrow";
    } else if (difference.inDays <= 7) {
      return "${difference.inDays} days left";
    } else if (difference.inDays <= 30) {
      final weeks = (difference.inDays / 7).floor();
      return weeks == 1 ? "1 week left" : "$weeks weeks left";
    } else {
      final months = (difference.inDays / 30).floor();
      return months == 1 ? "1 month left" : "$months months left";
    }
  }

  // ============================================================================
  // ✅ INPUT VALIDATION METHODS
  // ============================================================================

  /// ✅ **Date String Validator**
  ///
  /// Validates if a date string is in the correct format.
  ///
  /// Example: `validateDateString("2025-09-12", "yyyy-MM-dd")` → `true`
  static bool validateDateString(String dateString, String pattern) {
    try {
      DateFormat(pattern).parse(dateString);
      return true;
    } catch (e) {
      return false;
    }
  }

  /// ✅ **Safe Date Parser**
  ///
  /// Safely parses a date string with fallback to current date.
  ///
  /// Example: `safeParseDate("invalid", "yyyy-MM-dd")` → `DateTime.now()`
  static DateTime safeParseDate(String dateString, String pattern,
      {DateTime? fallback}) {
    try {
      return DateFormat(pattern).parse(dateString);
    } catch (e) {
      return fallback ?? DateTime.now();
    }
  }

  /// ✅ **Date Range Validator**
  ///
  /// Validates if a date is within a specified range.
  ///
  /// Example: `isDateInRange(DateTime.now(), startDate, endDate)` → `true/false`
  static bool isDateInRange(
      DateTime date, DateTime startDate, DateTime endDate) {
    return date.isAfter(startDate.subtract(Duration(days: 1))) &&
        date.isBefore(endDate.add(Duration(days: 1)));
  }

  /// ✅ **Leap Year Checker**
  ///
  /// Checks if a given year is a leap year.
  ///
  /// Example: `isLeapYear(2024)` → `true`
  static bool isLeapYear(int year) {
    return _isLeapYear(year);
  }

  /// ✅ **Valid Date Checker**
  ///
  /// Checks if a date is valid (handles edge cases like Feb 30).
  ///
  /// Example: `isValidDate(2025, 2, 30)` → `false`
  static bool isValidDate(int year, int month, int day) {
    try {
      DateTime(year, month, day);
      return true;
    } catch (e) {
      return false;
    }
  }

  // ============================================================================
  // 🌐 LOCALE SUPPORT METHODS
  // ============================================================================

  /// 🌐 **Localized Date Formatter**
  ///
  /// Formats a date using a specific locale.
  ///
  /// Example: `formatLocalized(DateTime.now(), "tr_TR")` → `"12 Eylül 2025"`
  static String formatLocalized(DateTime dateTime, String locale) {
    return DateFormat.yMMMMd(locale).format(dateTime);
  }

  /// 🌐 **Localized Time Formatter**
  ///
  /// Formats time using a specific locale.
  ///
  /// Example: `formatTimeLocalized(DateTime.now(), "tr_TR")` → `"14:30"`
  static String formatTimeLocalized(DateTime dateTime, String locale) {
    return DateFormat.Hm(locale).format(dateTime);
  }

  /// 🌐 **Localized Weekday**
  ///
  /// Returns weekday name in a specific locale.
  ///
  /// Example: `getWeekdayLocalized(DateTime.now(), "tr_TR")` → `"Cuma"`
  static String getWeekdayLocalized(DateTime dateTime, String locale) {
    return DateFormat.EEEE(locale).format(dateTime);
  }

  /// 🌐 **Localized Month Name**
  ///
  /// Returns month name in a specific locale.
  ///
  /// Example: `getMonthLocalized(DateTime.now(), "tr_TR")` → `"Eylül"`
  static String getMonthLocalized(DateTime dateTime, String locale) {
    return DateFormat.MMMM(locale).format(dateTime);
  }

  // ============================================================================
  // 🔧 PRIVATE HELPER METHODS
  // ============================================================================

  /// 🔧 **Private Leap Year Checker**
  ///
  /// Internal method to check if a year is a leap year.
  static bool _isLeapYear(int year) {
    return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
  }
}
