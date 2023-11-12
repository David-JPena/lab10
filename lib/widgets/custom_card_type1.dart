import 'package:flutter/material.dart';
import 'package:lab10/themes/app_themes.dart';

class Customcardone1 extends StatelessWidget {
  const Customcardone1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).colorScheme.primary;

    return Stack(
      children: [
        Material(
          elevation: 4.0,
          shadowColor: Colors.red,
          child: Card(
            elevation: 0,
            child: Column(
              children: [
                const ListTile(
                  leading: Icon(
                    Icons.desktop_windows_sharp,
                    color: AppTheme.primary,
                  ),
                  title: Text('Soy un item dentro de una card'),
                  subtitle:
                      Text("Este es un subtitulo como referencia a la app"),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Aceptra",
                          style: TextStyle(
                            color: AppTheme.primary,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Cancelar",
                          style: TextStyle(
                            color: AppTheme.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
