library master_view_cubit;

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:core/src/helper/grid_helper.dart';

part 'master_view_cubit_enums.dart';
part 'master_view_cubit_mixins.dart';

/// Cubit-based Master View
abstract class MasterViewCubit<V extends BaseViewModelCubit<S>, S>
    extends StatelessWidget with MasterViewCubitMixin {
  final Map<String, dynamic> arguments;
  final MasterViewCubitTypes currentView;
  final Function snackBarFunction;
  final PreferredSizeWidget Function(BuildContext, V)? coreAppBar;
  final Widget? Function(BuildContext, V)? coreBottomBar;
  final bool showDevGrid;

  /// Optional bottom navigation bar widget for the Scaffold.
  final Widget? bottomNavigationBar;

  MasterViewCubit({
    super.key,
    this.arguments = const {},
    this.currentView = MasterViewCubitTypes.content,
    this.snackBarFunction = defaultSnackBarFunction,
    this.coreAppBar,
    this.coreBottomBar,
    this.showDevGrid = true,
    this.bottomNavigationBar,
  })  : assert(arguments.isNotEmpty, 'Arguments must not be empty') {
    FlutterError.onError = (FlutterErrorDetails details) {
      debugPrint('FlutterError: ${details.exception}');
      debugPrintStack(stackTrace: details.stack);
    };
  }

  final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  // Ensures initialContent is called only once per widget instance
  final ValueNotifier<bool> _didCallInitial = ValueNotifier<bool>(false);

  /// UI content
  Widget viewContent(BuildContext context, V viewModel, S state);

  /// Called when ViewModel is ready with a BuildContext
  void initialContent(V viewModel, BuildContext context);

  @override
  Widget build(BuildContext context) {
    debugPrint('MasterViewCubit build. -> View Type: $currentView');

    if (currentView != MasterViewCubitTypes.content) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        try {
          final snackBar = _createSnackBar(currentView);
          _showSnackBar(context, snackBar);
        } catch (e) {
          debugPrint('Error creating or showing Snackbar: $e');
        }
      });
    }

    try {
      return _scaffold(context);
    } on Exception catch (e, s) {
      debugPrint('Exception in MasterViewCubit build: $e');
      debugPrintStack(stackTrace: s);
      return _buildErrorScaffold(context, 'Exception: $e');
    } catch (e, s) {
      debugPrint('Unknown error in MasterViewCubit build: $e');
      debugPrintStack(stackTrace: s);
      return _buildErrorScaffold(context, 'Unknown error: $e');
    }
  }

  Widget _scaffold(BuildContext context) {
    return _handleScaffoldErrors(() {
      return BaseViewCubit<V, S>(
        onViewModelReady: (viewModel) {
          // Defer until after first frame to ensure we have a valid BuildContext
          if (!_didCallInitial.value) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (!_didCallInitial.value) {
                try {
                  // Use the closest available context from the builder phase
                  final ctx = _scaffoldMessengerKey.currentContext ??
                      BaseViewCubit.navigatorKey.currentContext;
                  if (ctx != null) {
                    initialContent(viewModel, ctx);
                  }
                } catch (e, s) {
                  debugPrint('initialContent error: $e');
                  debugPrintStack(stackTrace: s);
                } finally {
                  _didCallInitial.value = true;
                }
              }
            });
          }
        },
        builder: (viewModel, context, state) {
          return Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            key: _scaffoldMessengerKey,
            appBar: coreAppBar?.call(context, viewModel),
            body: SafeArea(
              child: Column(
                children: [
                  const CoreSpacer(CoreSpacerType.navbar),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: GridHelper.defaultMargin),
                      child: viewContent(context, viewModel, state),
                    ),
                  ),
                  const CoreSpacer(CoreSpacerType.footer),
                ],
              ),
            ),
            bottomNavigationBar: coreBottomBar != null
                ? coreBottomBar!.call(context, viewModel)
                : bottomNavigationBar,
          );
        },
      );
    }, context);
  }

  Widget _handleScaffoldErrors(Function() scaffoldBuilder, BuildContext context) {
    try {
      return scaffoldBuilder();
    } catch (e, s) {
      debugPrint('Error in scaffold: $e');
      debugPrintStack(stackTrace: s);
      return _buildErrorScaffold(context, 'Error: $e');
    }
  }

  Widget _buildErrorScaffold(BuildContext context, String message) {
    return _createScaffold(
      body: buildError(message),
    );
  }

  Widget _createScaffold({required Widget body}) {
    return Scaffold(
      key: _scaffoldMessengerKey,
      backgroundColor: OsmeaColors.white,
      body: body,
    );
  }

  String _getSnackbarMessage(MasterViewCubitTypes state) {
    final message = _getMessageForState(state);
    return message.isNotEmpty
        ? message
        : 'An unexpected error occurred. Please try again later.';
  }

  String _getMessageForState(MasterViewCubitTypes state) {
    switch (state) {
      case MasterViewCubitTypes.loading:
        return resources.loading;
      case MasterViewCubitTypes.webview:
        return resources.webview;
      case MasterViewCubitTypes.error:
        return resources.error;
      case MasterViewCubitTypes.maintenance:
        return resources.maintenance;
      case MasterViewCubitTypes.empty:
        return resources.empty;
      case MasterViewCubitTypes.unauthorized:
        return resources.unauthorized;
      case MasterViewCubitTypes.timeout:
        return resources.timeout;
      default:
        return '';
    }
  }

  SnackBar _createSnackBar(MasterViewCubitTypes viewType) {
    final message = _getSnackbarMessage(viewType);
    return SnackBar(
      behavior: SnackBarBehavior.floating,
      content: Text(message),
      duration: const Duration(days: 1),
      action: SnackBarAction(
        label: resources.undo,
        onPressed: () {
          debugPrint('Snackbar Undo pressed');
          snackBarFunction();
        },
      ),
    );
  }

  void _showSnackBar(BuildContext context, SnackBar snackBar) {
    try {
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } catch (e, s) {
      debugPrint('Error showing snackbar: $e');
      debugPrintStack(stackTrace: s);
    }
  }

  static void defaultSnackBarFunction() {
    debugPrint('Default Snackbar function called');
  }

  void navigateTo(BuildContext context, String path) {
    GoRouter.of(context).go(path);
  }

  void navigateToWithArguments(
      BuildContext context, String path, Map<String, dynamic> arguments) {
    GoRouter.of(context).go(path, extra: arguments);
  }
}

class FooterArea extends StatelessWidget {
  const FooterArea({super.key});

  @override
  Widget build(BuildContext context) {
    return const CoreSpacer(CoreSpacerType.footer);
  }
}

class NavbarArea extends StatelessWidget {
  const NavbarArea({super.key});

  @override
  Widget build(BuildContext context) {
    return const CoreSpacer(CoreSpacerType.navbar);
  }
}


