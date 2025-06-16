import 'package:osmea_components/src/components/cubit_button/cubit/core_button_state.dart';

/// 🔑 **Login Button States**
///
/// Login-specific states that extend CoreButtonState for authentication operations.
/// Provides granular control over login flow states.

/// Initial state - ready for login
class LoginInitial extends ButtonInitial {
  const LoginInitial();
}

/// Validating credentials
class LoginValidating extends ButtonLoading {
  const LoginValidating() : super(message: 'Validating credentials...');
}

/// Authenticating with server
class LoginAuthenticating extends ButtonLoading {
  const LoginAuthenticating() : super(message: 'Signing in...');
}

/// Checking session
class LoginCheckingSession extends ButtonLoading {
  const LoginCheckingSession() : super(message: 'Checking session...');
}

/// Login successful
class LoginSuccess extends ButtonSuccess {
  final String? userDisplayName;
  final Map<String, dynamic>? userData;

  const LoginSuccess({
    this.userDisplayName,
    this.userData,
    String message = 'Login successful',
  }) : super(message: message);

  @override
  List<Object?> get props => [userDisplayName, userData, message];
}

/// Invalid credentials error
class LoginInvalidCredentials extends ButtonError {
  const LoginInvalidCredentials()
      : super(message: 'Invalid username or password');
}

/// Account locked error
class LoginAccountLocked extends ButtonError {
  final DateTime? lockExpires;

  const LoginAccountLocked({this.lockExpires})
      : super(message: 'Account temporarily locked');

  @override
  List<Object?> get props => [lockExpires, message];
}

/// Network connection error
class LoginNetworkError extends ButtonError {
  const LoginNetworkError() : super(message: 'Network connection failed');
}

/// Server error
class LoginServerError extends ButtonError {
  final int? statusCode;

  const LoginServerError({this.statusCode})
      : super(message: 'Server error occurred');

  @override
  List<Object?> get props => [statusCode, message];
}

/// Two-factor authentication required
class LoginTwoFactorRequired extends ButtonInitial {
  final String? verificationMethod;

  const LoginTwoFactorRequired({this.verificationMethod});

  @override
  List<Object?> get props => [verificationMethod];
}

/// Account setup required (first login)
class LoginAccountSetupRequired extends ButtonInitial {
  final Map<String, dynamic>? setupData;

  const LoginAccountSetupRequired({this.setupData});

  @override
  List<Object?> get props => [setupData];
}

/// Password change required
class LoginPasswordChangeRequired extends ButtonInitial {
  final bool isExpired;

  const LoginPasswordChangeRequired({this.isExpired = false});

  @override
  List<Object?> get props => [isExpired];
}
