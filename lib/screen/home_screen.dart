import 'package:flutter/material.dart';
import 'package:lab10/routes/app_routes.dart';
import 'package:lab10/themes/app_themes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color iconColor =
        Theme.of(context).primaryColor; // Obtén el color del tema actual

    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de flutter'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          final options = AppRoutes.menuOptions[index];
          return ListTile(
            leading: Icon(
              options.icon,
              color: iconColor, // Usa el color del tema para los íconos
            ),
            title: Text(options.name),
            trailing:
                Icon(Icons.circle_notifications_sharp, color: AppTheme.primary),
            onTap: () {
              Navigator.pushNamed(context, options.route);
            },
          );
        },
        separatorBuilder: (context, index) => const Divider(),
        itemCount: AppRoutes.menuOptions.length,
      ),
    );
  }
}
