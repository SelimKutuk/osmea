part of master_view_hydrated_cubit;

mixin MasterViewHydratedCubitMixin on StatelessWidget {
  MasterViewHydratedCubitTypes get currentView;

  Widget buildLoading({Color color = Colors.blue, double size = 50.0}) {
    return Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(color),
        strokeWidth: size,
      ),
    );
  }

  Widget buildError(String message, {VoidCallback? onRetry}) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Error: $message'),
          if (onRetry != null)
            ElevatedButton(
              onPressed: onRetry,
              child: Text('Retry'),
            ),
        ],
      ),
    );
  }
}


