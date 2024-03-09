import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../routing/router.dart';

class RoutingService {
  var appRouter = AppRouter();

  RouterConfig<UrlState> get configs => appRouter.config();
}
