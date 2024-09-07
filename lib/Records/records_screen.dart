import 'package:flutter/material.dart';

class RecordsScreen extends StatelessWidget {
  const RecordsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF020825),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24,top: 32),
        child: Column(
          children: [
            Text("Tuesday, Aug 21",style: TextStyle(fontSize: 22,color: Color(0xFFFFFFFF)),),
            SizedBox(height: 32,),

          ],
        ),
      ),
    );
  }
}
