import 'package:flutter/material.dart';
import 'package:saman_carriers_task/src/routes/routes_name.dart';
import 'package:saman_carriers_task/src/views/add_order/add_order_screen_one.dart';
import 'package:saman_carriers_task/src/views/add_order/add_order_screen_two.dart';

class MainActivity extends StatelessWidget {
  const MainActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Saman Carriers",
      onGenerateRoute: (routeSettings) => _onGenerateRoute(routeSettings),
    );
  }

  MaterialPageRoute _onGenerateRoute(RouteSettings routeSettings) {
    return MaterialPageRoute<void>(
      settings: routeSettings,
      builder: (BuildContext context) {
        switch (routeSettings.name) {
          case RoutesName.addOrderFirstScreen:
            return const AddOrderScreen();
          case RoutesName.addOrderSecondScreen:
            return const AddOrderScreenTwo();
          default:
            return const AddOrderScreen();
        }
      },
    );
  }
}
