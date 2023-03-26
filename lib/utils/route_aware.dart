import 'package:flutter/cupertino.dart';

import '../main.dart';

class RouteAwareWidget extends StatefulWidget {
  final Key key;

  const RouteAwareWidget({required this.key}) : super(key: key);

  @override
  State<RouteAwareWidget> createState() => RouteAwareWidgetState();
}

class RouteAwareWidgetState extends State<RouteAwareWidget>
    with RouteAware {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(
        this, ModalRoute.of(context)! as PageRoute<dynamic>);
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  void didPush() {
// Route was pushed onto navigator and is now topmost route.
  }

  @override
  void didPopNext() {
// Covering route was popped off the navigator.
  }

  @override
  Widget build(BuildContext context) => Container();
}

