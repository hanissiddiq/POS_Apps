import 'package:animated_login_v1/widget/IconWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) => SimpleSettingsTile(
        leading: IconWidget(icon: Icons.person, color: Colors.indigoAccent),
        title: 'Account Settings',
        subtitle: 'Privacy, Security, More',
        child: SettingsScreen(
          children: <Widget>[
            buildUbahPassword(context),
            buildPrivasi(context),
            buildSekuritas(context),
            buildInfoAkun(context),
          ],
        ),
        onTap: () {
          /*Noop*/
        },
      );

// Widget buildUbahPassword
  Widget buildUbahPassword(BuildContext context) => TextInputSettingsTile(
        settingKey: 'keyPassword',
        title: "Password",
        obscureText: true,
        validator: (password) => password != null && password.length >= 6
        ? null : 'Password min 6 karakter',
        onChange: (password) {
          debugPrint('keyPassword: $password');
        },
      );
// Widget buildPrivasi
  Widget buildPrivasi(BuildContext context) => SimpleSettingsTile(
        title: "Privacy",
        subtitle: '',
        leading:
            IconWidget(icon: Icons.privacy_tip, color: Colors.indigoAccent),
        onTap: () {},
      );

// Widget buildSekuritas
  Widget buildSekuritas(BuildContext context) => SimpleSettingsTile(
        title: "Security",
        subtitle: '',
        leading:
            IconWidget(icon: Icons.security, color: Colors.indigoAccent),
        onTap: () {},
      );

// Widget buildAccountInfo
  Widget buildInfoAkun(BuildContext context) => SimpleSettingsTile(
        title: "Account Info",
        subtitle: '',
        leading:
            IconWidget(icon: Icons.help, color: Colors.indigoAccent),
        onTap: () {},
      );
}
