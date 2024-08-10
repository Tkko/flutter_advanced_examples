import 'package:flutter/material.dart';

import '../styles/styles.dart';

class AppView extends StatelessWidget {
  const AppView({
    required this.appTheme,
    super.key,
  });

  final AppTheme appTheme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Advanced Flutter Examples'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                ),
                title: Text('Tornike Kurdadze', style: context.bodyM),
                subtitle: Text('Sr. Flutter Developer', style: context.labelS),
              ),
            ),
            Row(
              children: [
                Text('Light Mode', style: context.labelS),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Switch(
                    value: appTheme.themeMode == ThemeMode.dark,
                    onChanged: (_) {
                      appTheme.toggleThemeMode();
                    },
                  ),
                ),
                Text('Dark Mode', style: context.labelS),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
