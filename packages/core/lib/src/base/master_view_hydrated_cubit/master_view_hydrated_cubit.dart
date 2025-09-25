library master_view_hydrated_cubit;

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:core/src/base/widgets/master_scaffold_widget.dart';
import 'package:go_router/go_router.dart';

part 'master_view_hydrated_cubit_enums.dart';
part 'master_view_hydrated_cubit_mixins.dart';

/// Hydrated Cubit-based Master View
abstract class MasterViewHydratedCubit<V extends BaseViewModelHydratedCubit<S>,
    S> extends StatelessWidget with MasterViewHydratedCubitMixin {
  final Map<String, dynamic> arguments;
  final MasterViewHydratedCubitTypes currentView;
  final Function snackBarFunction;
  final PreferredSizeWidget Function(BuildContext, V)? coreAppBar;
  final Widget? Function(BuildContext, V)? coreBottomBar;
  final bool showDevGrid;
  final Function(String path) goRoute;
  final bool extendBody;
  final bool extendBodyBehindAppBar;

  // Layout configuration - external values
  final SpacerVisibility? navbarSpacer;
  final SpacerVisibility? footerSpacer;
  final PaddingVisibility? horizontalPadding;

  // Spacer types - custom overrides default
  final CoreSpacerType? customNavbarSpacerType;
  final CoreSpacerType? customFooterSpacerType;
  final CoreSpacerType defaultNavbarSpacerType;
  final CoreSpacerType defaultFooterSpacerType;

  // Padding values - custom overrides default
  final double? customHorizontalPadding;
  final double defaultHorizontalPadding;

  final Widget? bottomNavigationBar;

  MasterViewHydratedCubit({
    super.key,
    this.arguments = const {},
    this.currentView = MasterViewHydratedCubitTypes.content,
    this.snackBarFunction = defaultSnackBarFunction,
    this.coreAppBar,
    this.coreBottomBar,
    this.showDevGrid = true,
    this.bottomNavigationBar,
    this.extendBody = true,
    this.extendBodyBehindAppBar = true,
    this.navbarSpacer,
    this.footerSpacer,
    this.horizontalPadding,
    this.customNavbarSpacerType,
    this.customFooterSpacerType,
    this.defaultNavbarSpacerType = CoreSpacerType.navbar,
    this.defaultFooterSpacerType = CoreSpacerType.footer,
    this.customHorizontalPadding,
    this.defaultHorizontalPadding = 16.0,
    required this.goRoute,
  }) : assert(arguments.isNotEmpty, 'Arguments must not be empty') {
    FlutterError.onError = (FlutterErrorDetails details) {
      debugPrint('FlutterError: ${details.exception}');
      debugPrintStack(stackTrace: details.stack);
    };
  }

  final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  final ValueNotifier<bool> _didCallInitial = ValueNotifier<bool>(false);

  Widget viewContent(BuildContext context, V viewModel, S state);

  void initialContent(V viewModel, BuildContext context);

  @override
  Widget build(BuildContext context) {
    debugPrint('MasterViewHydratedCubit build. -> View Type: $currentView');

    if (currentView != MasterViewHydratedCubitTypes.content) {
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
      debugPrint('Exception in MasterViewHydratedCubit build: $e');
      debugPrintStack(stackTrace: s);
      return _buildErrorScaffold(context, 'Exception: $e');
    } catch (e, s) {
      debugPrint('Unknown error in MasterViewHydratedCubit build: $e');
      debugPrintStack(stackTrace: s);
      return _buildErrorScaffold(context, 'Unknown error: $e');
    }
  }

  Widget _scaffold(BuildContext context) {
    return _handleScaffoldErrors(() {
      return BaseViewHydratedCubit<V, S>(
        onViewModelReady: (viewModel) {
          if (!_didCallInitial.value) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (!_didCallInitial.value) {
                try {
                  final ctx = _scaffoldMessengerKey.currentContext;
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
          return MasterScaffoldWidget(
            scaffoldMessengerKey: _scaffoldMessengerKey,
            appBar: coreAppBar?.call(context, viewModel),
            body: viewContent(context, viewModel, state),
            bottomNavigationBar: coreBottomBar != null
                ? coreBottomBar!.call(context, viewModel)
                : bottomNavigationBar,
            extendBody: extendBody,
            extendBodyBehindAppBar: extendBodyBehindAppBar,
            navbarSpacer: navbarSpacer,
            footerSpacer: footerSpacer,
            horizontalPadding: horizontalPadding,
            customNavbarSpacerType: customNavbarSpacerType,
            customFooterSpacerType: customFooterSpacerType,
            defaultNavbarSpacerType: defaultNavbarSpacerType,
            defaultFooterSpacerType: defaultFooterSpacerType,
            customHorizontalPadding: customHorizontalPadding,
            defaultHorizontalPadding: defaultHorizontalPadding,
          );
        },
      );
    }, context);
  }

  Widget _handleScaffoldErrors(
      Function() scaffoldBuilder, BuildContext context) {
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

  String _getSnackbarMessage(MasterViewHydratedCubitTypes state) {
    final message = _getMessageForState(state);
    return message.isNotEmpty
        ? message
        : 'An unexpected error occurred. Please try again later.';
  }

  String _getMessageForState(MasterViewHydratedCubitTypes state) {
    switch (state) {
      case MasterViewHydratedCubitTypes.loading:
        return resources.loading;
      case MasterViewHydratedCubitTypes.webview:
        return resources.webview;
      case MasterViewHydratedCubitTypes.error:
        return resources.error;
      case MasterViewHydratedCubitTypes.maintenance:
        return resources.maintenance;
      case MasterViewHydratedCubitTypes.empty:
        return resources.empty;
      case MasterViewHydratedCubitTypes.unauthorized:
        return resources.unauthorized;
      case MasterViewHydratedCubitTypes.timeout:
        return resources.timeout;
      default:
        return '';
    }
  }

  SnackBar _createSnackBar(MasterViewHydratedCubitTypes viewType) {
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
