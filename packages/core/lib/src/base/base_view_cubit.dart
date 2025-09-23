import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

typedef OnViewModelReady<V> = void Function(V viewModel);
 
typedef OnViewModelEnd<V> = void Function(V viewModel);
typedef OnViewModelStaeBuilder<V, S> = Widget Function(
    V viewModel, BuildContext context, S state);
 
typedef OnStateListenerCubit<S> = void Function(BuildContext context, S? state);
 
typedef BuilderCondition<S> = bool Function(S? previues, S? current);
 
class BaseViewCubit<V extends BaseViewModelCubit<S>, S> extends StatefulWidget {
  const BaseViewCubit({
    Key? key,
    this.onViewModelReady,
    this.builder,
    this.onStateListener,
    this.builderCondition, this.onVievModelEnd,
  }) : super(key: key);
 
  final OnViewModelReady<V>? onViewModelReady;
  final OnViewModelEnd<V>? onVievModelEnd;
  final OnViewModelStaeBuilder<V, S>? builder;
  final OnStateListenerCubit<S>? onStateListener;
  final BuilderCondition<S>? builderCondition;
 
  @override
  State<BaseViewCubit<V, S>> createState() => _BaseViewCubitState<V, S>();
}
 
class _BaseViewCubitState<V extends BaseViewModelCubit<S>, S>
    extends State<BaseViewCubit<V, S>> {
  V viewModel = GetIt.I<V>();
 
  @override
  void initState() {
    super.initState();
    widget.onViewModelReady?.call(viewModel);
  }
 
  @override
  void dispose() {
    super.dispose();
    widget.onVievModelEnd?.call(viewModel);
  }
 
  @override
  Widget build(BuildContext context) {
    return BlocProvider<V>.value(
      value: viewModel,
      child: BlocConsumer<V, S>(
        listener: widget.onStateListener ?? (_, __) {},
        buildWhen: widget.builderCondition,
        builder: (context, state) {
          return widget.builder?.call(viewModel, context, state) ??
              const SizedBox();
        },
      ),
    );
  }
}
 