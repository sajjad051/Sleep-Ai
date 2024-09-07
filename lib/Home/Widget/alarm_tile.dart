import 'package:flutter/material.dart';

import '../controler/sleep1_coltroler.dart';
import '../controler/sleep2_controler.dart';

class AlarmTile extends StatelessWidget {
  final Alarm alarm;
  final ValueChanged<bool> onToggle;

  AlarmTile({required this.alarm, required this.onToggle});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Color(0xFF020825).withOpacity(.6),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 3.0),
        title: Text(
          alarm.time,
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFFFFFFFF)),
        ),
        subtitle: Text(
          alarm.days,
          style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 14),
        ),
        trailing: Switch(
          value: alarm.isActive,
          onChanged: onToggle,
        ),
      ),
    );
  }
}
