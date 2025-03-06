import 'package:animated_login_v1/widget/appbarwidget.dart';
import 'package:animated_login_v1/widget/DrawerWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';

import '../widget/IconWidget.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  static const keyDarkMode = 'key-dark-mode';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 5),
          child: ListView(
            children: <Widget>[
              AppBarWidget(),
              SettingsGroup(
                title: 'Tampilan',
                children: <Widget>[buildDarkMode(), buildChangeFontSize()],
              ),
              SizedBox(height: 10),
              SettingsGroup(
                title: 'System',
                children: <Widget>[buildRotateMode()],
              ),
            ],
          ),
        ),
      ),
      drawer: Drawerwidget(),
    );
  }

  // widget Dark Mode
  Widget buildDarkMode() => SwitchSettingsTile(
        settingKey: 'keyDarkMode',
        leading: IconWidget(
          icon: Icons.dark_mode,
          color: Color(0xFF642ef3),
        ),
        title: 'Dark Mode',
        onChange: (isDarkMode) {},
      );

  // widget cahnge font size
  Widget buildChangeFontSize() => SliderSettingsTile(
        title: 'Font Size',
        settingKey: 'key-slider-font',
        defaultValue: 18,
        min: 0,
        max: 72,
        step: 1,
        leading:
            IconWidget(icon: Icons.font_download, color: Colors.blueAccent),
        onChange: (value) {
          debugPrint('key-slider-font: $value');
        },
      );

      // widget Dark Mode
  Widget buildRotateMode() => SwitchSettingsTile(
  leading: IconWidget(icon: Icons.developer_mode, color: Color.fromARGB(255, 95, 194, 15)),
  settingKey: 'key-switch-dev-mode',
  title: 'Developer Settings',
  onChange: (value) {
    debugPrint('key-switch-dev-mod: $value');
  },
  childrenIfEnabled: <Widget>[
    CheckboxSettingsTile(
      leading: Icon(Icons.adb),
      settingKey: 'key-is-developer',
      title: 'Developer Mode',
      onChange: (value) {
        debugPrint('key-is-developer: $value');
      },
    ),
    CheckboxSettingsTile(
      leading: Icon(Icons.rotate_left_rounded),
      settingKey: 'key-is-rotate',
      title: 'Auto Rotate',
      onChange: (value) {
        debugPrint('key-is-developer: $value');
      },
    ),
    SwitchSettingsTile(
      leading: Icon(Icons.usb),
      settingKey: 'key-is-usb-debugging',
      title: 'USB Debugging',
      onChange: (value) {
        debugPrint('key-is-usb-debugging: $value');
      },
    ),
    SimpleSettingsTile(
      title: 'Root Settings',
      subtitle: 'These settings is not accessible',
      enabled: false,
    )
  ],
 );
}
