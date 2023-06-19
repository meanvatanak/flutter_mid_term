import 'package:flutter/material.dart';

class SettingListTile extends StatelessWidget {
  const SettingListTile({
    super.key,
    required this.title,
    required this.myIcon,
  });

  final title;
  final IconData myIcon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Icon(myIcon),
      ),
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }
}
